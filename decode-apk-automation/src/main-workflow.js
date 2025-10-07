const JulesAPIClient = require('./jules-api-client');
const JulesErrorHandler = require('./jules-error-handler');
const { generateDecryptionPrompt } = require('./decrypt-analyzer');

/**
 * Processes activities from a completed session to extract the final JSON report.
 * @param {Array} activities The list of activities from the Jules session.
 * @returns {object} The parsed JSON object from the agent's report.
 */
function processActivityResult(activities) {
  console.log("Processing final activity result...");
  // Find the last agent message, which should contain the JSON report.
  const agentMessages = activities.filter(a => a.type === 'AGENT_MESSAGE' && a.message);
  if (agentMessages.length === 0) {
    throw new Error("No agent messages found in activities. Cannot extract result.");
  }

  const lastMessage = agentMessages[agentMessages.length - 1].message;

  // Extract the JSON content from the markdown code block.
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

async function runDecryptionWorkflow() {
  const apiKey = process.env.JULES_API_KEY;
  if (!apiKey) {
    throw new Error('JULES_API_KEY is not set.');
  }
  const julesClient = new JulesAPIClient(apiKey);
  const errorHandler = new JulesErrorHandler(julesClient);

  try {
    console.log('=== Step 1: Finding Repository Source ===');
    const source = await julesClient.findSource('halibiram', 'decode-apk');

    console.log('\n=== Step 2: Generating Comprehensive Decryption Prompt ===');
    const decryptionPrompt = await generateDecryptionPrompt();

    console.log('\n=== Step 3: Creating Single Jules Session ===');
    const session = await julesClient.createSession(
      source.name,
      decryptionPrompt,
      'Comprehensive Decryption of Servers.js',
      false // Auto-approve plan
    );

    // Extract the session ID from the 'name' field (e.g., "sessions/12345")
    const sessionId = session.name.split('/').pop();

    console.log(`\n=== Step 4: Monitoring Session ${sessionId} ===`);
    const result = await julesClient.monitorSession(sessionId, 20000, 1800000); // 30 min timeout

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
    // Log the stack trace for better debugging if available
    if (error.stack) {
      console.error(error.stack);
    }
    throw error;
  }
}

module.exports = { runDecryptionWorkflow };