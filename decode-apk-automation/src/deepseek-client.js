const { chromium } = require('playwright-extra');
const stealth = require('puppeteer-extra-plugin-stealth')();

// Apply the stealth plugin to playwright
chromium.use(stealth);

class DeepseekClient {
    constructor(email, password) {
        if (!email || !password) {
            throw new Error('Deepseek email and password are required.');
        }
        this.email = email;
        this.password = password;
        this.browser = null;
        this.page = null;
    }

    async initialize() {
        console.log('Initializing Deepseek Playwright client...');
        this.browser = await chromium.launch({ headless: true });
        const context = await this.browser.newContext();
        this.page = await context.newPage();

        console.log('Navigating to Deepseek chat...');
        await this.page.goto('https://chat.deepseek.com/');

        try {
            // Check if login is needed by looking for a "Log in" button
            console.log('Checking for login requirement...');
            const loginButtonSelector = 'button:has-text("Log in")';
            await this.page.waitForSelector(loginButtonSelector, { timeout: 10000 });

            console.log('Login required. Proceeding with login...');
            await this.page.click(loginButtonSelector);

            // Fill in login credentials
            await this.page.fill('input[type="email"]', this.email);
            await this.page.fill('input[type="password"]', this.password);

            // Click the submit button to log in
            await this.page.click('button[type="submit"]');

            // Wait for the main chat interface to load after login
            await this.page.waitForSelector('textarea', { timeout: 30000 });
            console.log('Login successful.');
        } catch (error) {
            // If the login button isn't found, we assume the session is already active
            console.log('Login button not found. Assuming already logged in.');
        }
    }

    async getCompletion(message) {
        if (!this.page) {
            throw new Error('Client is not initialized. Please call initialize() first.');
        }

        console.log('Sending message to Deepseek via Playwright...');
        const chatInputSelector = 'textarea';
        await this.page.waitForSelector(chatInputSelector);
        await this.page.fill(chatInputSelector, message);

        // This selector assumes the send button is the one immediately available
        const sendButtonSelector = 'button[class*="send-button"]'; // Example selector
        await this.page.click(sendButtonSelector);

        console.log('Waiting for response from Deepseek...');

        // Wait for the response to be generated.
        // A robust way is to count the number of message containers before sending,
        // then wait for a new one to appear and for the "thinking" indicator to disappear.
        const messageContainerSelector = 'div[data-message-id]'; // Example selector
        const messageCount = await this.page.locator(messageContainerSelector).count();

        await this.page.waitForFunction(
            (selector, prevCount) => {
                const elements = document.querySelectorAll(selector);
                // Wait for a new message and ensure the last one isn't empty or thinking
                return elements.length > prevCount && elements[elements.length - 1].textContent.trim() !== '';
            },
            [messageContainerSelector, messageCount],
            { timeout: 90000 } // 90-second timeout for the AI to respond
        );

        const lastMessage = await this.page.locator(messageContainerSelector).last().textContent();

        console.log('Response received successfully.');
        return lastMessage;
    }

    async close() {
        if (this.browser) {
            await this.browser.close();
            console.log('Playwright browser closed.');
        }
    }
}

module.exports = DeepseekClient;