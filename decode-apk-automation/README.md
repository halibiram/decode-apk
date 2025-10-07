# Automated Decryption System for Servers.js

This project contains an automated system to decrypt encrypted texts in the `Servers.js` file from the repository https://github.com/halibiram/decode-apk.

It uses a combination of Playwright, Deepseek integration, and the Jules API to achieve this.

## Setup

1. Install dependencies:
   ```bash
   npm install
   ```
2. Set up your environment variables in a `.env` file:
   ```
   JULES_API_KEY=your_jules_api_key
   DEEPSEEK_EMAIL=your_deepseek_email
   DEEPSEEK_PASSWORD=your_deepseek_password
   ```

## Usage

The main script is triggered via a GitHub Actions workflow. See `.github/workflows/decrypt.yml` for details.

## Important Notes

- **Deepseek and Cloudflare Integration**: The files `src/deepseek-client.js` and `src/cloudflare-bypass.js` are placeholders. The logic for interacting with Deepseek and bypassing Cloudflare is not implemented in this version. The core functionality relies on the Jules API for decryption.