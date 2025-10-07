const JulesAPIClient = require('./jules-api-client');
const DeepseekClient = require('./deepseek-client');
const JulesErrorHandler = require('./jules-error-handler');
const { generateDecryptionPrompt } = require('./decrypt-analyzer');

/**
 * Processes activities from a completed session to extract the final JSON report.
 * @param {Array} activities The list of activities from the Jules session.
 * @returns {object} The parsed JSON object from the agent's report.
 */
function processActivityResult(activities) {
    console.log("Processing final activity result...");
    const agentMessages = activities.filter(a => a.oneofKind?.$case === 'agentMessage' && a.oneofKind?.message?.message);
    if (agentMessages.length === 0) {
        console.error("No agent messages found. All activities:", JSON.stringify(activities, null, 2));
        throw new Error("No agent messages found in activities. Cannot extract result.");
    }

    const lastMessage = agentMessages[agentMessages.length - 1].oneofKind.message.message;
    const jsonMatch = lastMessage.match(/```json\s*([\s\S]*?)\s*```/);
    if (!jsonMatch || !jsonMatch[1]) {
        throw new Error("Could not find a JSON code block in the agent's final message.");
    }

    try {
        return JSON.parse(jsonMatch[1]);
    } catch (error) {
        console.error("Failed to parse JSON from agent's message:", error);
        throw new Error("The agent's final message did not contain valid JSON.");
    }
}

/**
 * Monitors the Jules session, acting as a proxy between Jules and Deepseek.
 * @param {JulesAPIClient} julesClient - The Jules API client.
 * @param {DeepseekClient} deepseekClient - The Playwright-based Deepseek client.
 * @param {string} sessionId - The ID of the session to monitor.
 * @returns {Promise<object>} - A promise that resolves with the final session result.
 */
async function monitorAndProxySession(julesClient, deepseekClient, sessionId) {
    let lastActivityId = null;
    const pollInterval = 15000; // 15 seconds
    const timeout = 1800000; // 30 minutes
    const startTime = Date.now();

    console.log(`\n=== Step 4: Monitoring and Proxying Session ${sessionId} ===`);

    while (Date.now() - startTime < timeout) {
        const session = await julesClient.getSession(sessionId);
        if (session.state === 'COMPLETED' || session.state === 'FAILED') {
            console.log(`Session ended with state: ${session.state}`);
            return { status: session.state === 'COMPLETED' ? 'completed' : 'failed' };
        }

        const activities = await julesClient.getAllActivities(sessionId);
        const lastIndex = lastActivityId ? activities.findIndex(a => a.id === lastActivityId) : -1;
        const newActivities = activities.slice(lastIndex + 1);

        if (newActivities.length > 0) {
            lastActivityId = newActivities[newActivities.length - 1].id;

            for (const activity of newActivities) {
                if (activity.oneofKind?.$case === 'agentMessage') {
                    const agentMessage = activity.oneofKind.message.message;
                    console.log(`\n[Jules Agent Message] Received: "${agentMessage.substring(0, 150)}..."`);

                    console.log('[Deepseek] Forwarding message to Deepseek via Playwright...');
                    const deepseekResponse = await deepseekClient.getCompletion(agentMessage);
                    console.log(`[Deepseek] Received response: "${deepseekResponse.substring(0, 150)}..."`);

                    console.log('[Jules Agent] Sending Deepseek response back to Jules...');
                    await julesClient.postMessageToSession(sessionId, deepseekResponse);
                    console.log('[Jules Agent] Response sent successfully.');
                }
            }
        }

        await new Promise(resolve => setTimeout(resolve, pollInterval));
    }

    console.warn('Session monitoring timed out.');
    return { status: 'timed_out' };
}

async function runDecryptionWorkflow() {
    const julesApiKey = process.env.JULES_API_KEY;
    const deepseekEmail = process.env.DEEPSEEK_EMAIL;
    const deepseekPassword = process.env.DEEPSEEK_PASSWORD;

    if (!julesApiKey) throw new Error('JULES_API_KEY is not set.');
    if (!deepseekEmail || !deepseekPassword) {
        throw new Error('DEEPSEEK_EMAIL and DEEPSEEK_PASSWORD must be set in environment variables.');
    }

    const julesClient = new JulesAPIClient(julesApiKey);
    const deepseekClient = new DeepseekClient(deepseekEmail, deepseekPassword);
    const errorHandler = new JulesErrorHandler(julesClient);

    try {
        await deepseekClient.initialize();

        console.log('=== Step 1: Finding Repository Source ===');
        const source = await julesClient.findSource('halibiram', 'decode-apk');

        console.log('\n=== Step 2: Generating Comprehensive Decryption Prompt ===');
        const decryptionPrompt = await generateDecryptionPrompt();

        console.log('\n=== Step 3: Creating Single Jules Session ===');
        const session = await julesClient.createSession(
            source.name,
            decryptionPrompt,
            'Comprehensive Decryption of Servers.js',
            false
        );

        const sessionId = session.name.split('/').pop();
        const result = await monitorAndProxySession(julesClient, deepseekClient, sessionId);

        if (result.status === 'completed') {
            console.log('\n=== Step 5: Session Completed. Processing Final Report... ===');
            const activities = await julesClient.getAllActivities(sessionId);
            const decryptedData = processActivityResult(activities);

            console.log('✅ Workflow completed successfully!');
            return { success: true, decryptedData: decryptedData };
        } else {
            console.error(`❌ Session ${sessionId} failed or timed out.`);
            await errorHandler.handleError(sessionId, 'DECRYPTION_FAILED', result.error || 'Timeout');

            return {
                success: false,
                error: `Decryption failed: ${result.error || 'Timeout'}`
            };
        }
    } catch (error) {
        console.error('Workflow failed catastrophically:', error.message);
        if (error.stack) {
            console.error(error.stack);
        }
        throw error;
    } finally {
        console.log("Closing Playwright browser...");
        await deepseekClient.close();
    }
}

module.exports = { runDecryptionWorkflow };