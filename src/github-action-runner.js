const { runDecryptionWorkflow } = require('./main-workflow');
const fs = require('fs').promises;

async function main() {
  console.log('Starting GitHub Actions Decryption Workflow');

  // Validate environment variables
  if (!process.env.JULES_API_KEY) {
    console.error('Error: JULES_API_KEY not found in environment.');
    process.exit(1);
  }

  try {
    // Run the main workflow
    const result = await runDecryptionWorkflow();

    // Save results to file
    await fs.writeFile(
      'decryption-results.json',
      JSON.stringify(result, null, 2)
    );
    console.log('Results saved to decryption-results.json');

    if (result.success) {
      console.log('✅ Decryption completed successfully!');
      process.exit(0);
    } else {
      console.error('❌ Decryption failed or timed out.');
      process.exit(1);
    }

  } catch (error) {
    console.error('Fatal error during workflow execution:', error.message);
    console.error(error.stack);
    // Attempt to write error details to the results file
    try {
        await fs.writeFile('decryption-results.json', JSON.stringify({ success: false, error: error.message }, null, 2));
    } catch (e) {
        console.error('Could not write error to results file.', e);
    }
    process.exit(1);
  }
}

// Run if called directly from the command line
if (require.main === module) {
  // Allows loading .env file for local testing
  require('dotenv').config();
  main();
}

module.exports = { main };