/**
 * Generates a single, comprehensive prompt for Jules to decrypt all strings in Servers.js.
 * This delegates the file fetching, parsing, and decryption to the agent.
 * @returns {string} A detailed prompt for the Jules session.
 */
async function generateDecryptionPrompt() {
  return `# Comprehensive Decryption Task for Servers.js

## Context
You are an expert software engineer and cryptanalyst working on the repository: \`https://github.com/halibiram/decode-apk\`.

## Objective
Your goal is to find, decrypt, and report all encrypted strings within the \`Servers.js\` file located in the repository's root directory.

## Instructions

### Step 1: Access and Analyze the File
1.  Locate and read the content of the \`Servers.js\` file from the repository root.
2.  Systematically identify all strings in the file that appear to be encrypted. These are typically long, encoded strings (e.g., Base64, hex).

### Step 2: Decrypt All Identified Strings
1.  For each encrypted string you find, determine the decryption method. Analyze the surrounding code for clues (e.g., decryption functions, keys, libraries).
2.  Apply the correct decryption algorithm and key.
3.  Handle multi-layer encryption if present (e.g., a string that is both Base64 encoded and then AES encrypted).

### Step 3: Compile and Report Results
1.  Create a single, clean report of your findings.
2.  The report **MUST** be a JSON array of objects, where each object has two keys: \`"original"\` and \`"decrypted"\`.
3.  Format the final output inside a single JSON code block like this:

\`\`\`json
[
  {
    "original": "FIRST_ENCRYPTED_STRING",
    "decrypted": "FIRST_DECRYPTED_STRING"
  },
  {
    "original": "SECOND_ENCRYPTED_STRING",
    "decrypted": "SECOND_DECRYPTED_STRING"
  }
]
\`\`\`

**Important:** Do not include any other text or explanation outside of this JSON block in your final message. The output must be parsable.
`;
}

module.exports = {
  generateDecryptionPrompt,
};