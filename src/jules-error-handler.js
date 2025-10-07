class JulesErrorHandler {
  constructor(julesClient) {
    this.julesClient = julesClient;
    this.errorStrategies = {
      'DECRYPTION_FAILED': async (sessionId, error) => {
        return await this.julesClient.sendMessage(
          sessionId,
          `Previous decryption attempt failed with error: "${error}". Please try: 1) Verify the encryption algorithm, 2) Check for encoding layers, 3) Look for keys in config files`
        );
      },
      'KEY_NOT_FOUND': async (sessionId, error) => {
        return await this.julesClient.sendMessage(
          sessionId,
          'Decryption key not found. Please search the entire repository for: "key", "secret", "cipher", or check environment variables and config files'
        );
      },
      'INVALID_FORMAT': async (sessionId, error) => {
        return await this.julesClient.sendMessage(
          sessionId,
          'Invalid format detected. The text might have multiple encoding layers. Try: Base64 decode first, then check if result needs further decoding'
        );
      }
    };
  }

  async handleError(sessionId, errorType, errorMessage) {
    console.log(`Handling error: ${errorType} - ${errorMessage}`);

    const strategy = this.errorStrategies[errorType];
    if (strategy) {
      console.log(`Executing strategy for ${errorType}`);
      return await strategy(sessionId, errorMessage);
    }

    // Generic error handling for unknown error types
    console.log('Executing generic error handling strategy.');
    return await this.julesClient.sendMessage(
      sessionId,
      `An unexpected error occurred: "${errorMessage}". Please analyze the root cause and suggest an alternative approach.`
    );
  }
}

module.exports = JulesErrorHandler;