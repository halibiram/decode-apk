const fs = require('fs');

const filePath = process.argv[2];
if (!filePath) {
  console.error("Please provide a file path.");
  process.exit(1);
}

fs.readFile(filePath, 'utf8', (err, data) => {
  if (err) {
    console.error("Error reading the file:", err);
    return;
  }

  // Replace unescaped newlines within string values
  let sanitizedData = data.replace(/\\n/g, '\\\\n');

  // Replace single quotes with double quotes for keys and string values
  sanitizedData = sanitizedData.replace(/'/g, '"');

  // Remove trailing commas in objects and arrays
  sanitizedData = sanitizedData.replace(/,\s*([}\]])/g, '$1');

  // Remove potential comments (though none were in the provided snippet)
  sanitizedData = sanitizedData.replace(/\/\*[\s\S]*?\*\/|([^\\:]|^)\/\/.*$/gm, '$1');


  try {
    // Validate if it's a valid JSON now
    JSON.parse(sanitizedData);
    console.log(sanitizedData);
  } catch (parseErr) {
    console.error("Failed to parse JSON after sanitization:", parseErr);
    // Fallback to a more aggressive cleanup if simple replacement fails
    // This part can be expanded based on common errors
    // For now, we'll just log the error and the problematic data
    console.error("Problematic data:", sanitizedData);
  }
});