const fs = require('fs');
const path = require('path');

/**
 * This script sanitizes a potentially malformed JSON or JS file to produce a clean JSON array.
 * It handles two main cases:
 * 1. Malformed JSON with unescaped newlines within string values (like in Servers.js).
 * 2. A JSON object that wraps the desired array (e.g., { "Servers": [...] }).
 *
 * Usage: node sanitize_json.js <input_path> <output_path>
 */

const a = () => {
    const inputPath = process.argv[2];
    const outputPath = process.argv[3];

    if (!inputPath || !outputPath) {
        console.error('Usage: node sanitize_json.js <input_path> <output_path>');
        process.exit(1);
    }

    console.log(`Sanitizing '${inputPath}' and writing to '${outputPath}'...`);

    try {
        let content = fs.readFileSync(inputPath, 'utf8');

        // Step 1: Fix unescaped newlines inside JSON strings
        // This is a common issue in hand-edited config files.
        let sanitizedContent = '';
        let inString = false;
        for (let i = 0; i < content.length; i++) {
            const char = content[i];
            // Toggle inString state if we encounter a quote that is not escaped
            if (char === '"' && (i === 0 || content[i-1] !== '\\')) {
                inString = !inString;
            }
            // If we are inside a string and find a newline, escape it. Otherwise, keep it.
            if (inString && char === '\n') {
                sanitizedContent += '\\n';
            } else {
                sanitizedContent += char;
            }
        }

        // Step 2: Parse the now-valid JSON string
        const jsonObject = JSON.parse(sanitizedContent);

        // Step 3: Extract the "Servers" array if it exists.
        // If the root is already an array, use it directly.
        const serversArray = Array.isArray(jsonObject) ? jsonObject : jsonObject.Servers;

        if (!Array.isArray(serversArray)) {
            throw new Error('The final processed JSON is not an array and a ".Servers" key was not found.');
        }

        // Step 4: Write the clean JSON array to the output file.
        fs.writeFileSync(outputPath, JSON.stringify(serversArray, null, 2));

        console.log('✅ Successfully sanitized and extracted server array.');
        console.log(`Total servers found: ${serversArray.length}`);

    } catch (error) {
        console.error('❌ Error during sanitation:', error.message);
        // Also write the problematic content to the log for debugging
        console.error('Problematic content received:', fs.readFileSync(inputPath, 'utf8'));
        process.exit(1);
    }
};

a();