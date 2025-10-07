const axios = require('axios');

const JULES_API_CONFIG = {
  baseURL: 'https://jules.googleapis.com/v1alpha',
  headers: {
    'Content-Type': 'application/json',
    'X-Goog-Api-Key': process.env.JULES_API_KEY
  },
  timeout: 30000,
  retryAttempts: 3
};

class JulesAPIClient {
  constructor(apiKey) {
    this.apiKey = apiKey;
    this.baseURL = JULES_API_CONFIG.baseURL;
    this.client = axios.create({
      baseURL: this.baseURL,
      headers: {
        'Content-Type': 'application/json',
        'X-Goog-Api-Key': apiKey
      },
      timeout: JULES_API_CONFIG.timeout
    });
  }

  // 1. List Available Sources (GitHub Repos)
  async listSources(pageSize = 10, pageToken = null) {
    try {
      const params = { pageSize };
      if (pageToken) params.pageToken = pageToken;

      const response = await this.client.get('/sources', { params });

      console.log('Available sources:', response.data.sources);
      return response.data;
    } catch (error) {
      console.error('Error listing sources:', error.response?.data || error.message);
      throw error;
    }
  }

  // 2. Find Specific Source by Repo Name
  async findSource(owner, repo) {
    try {
      let allSources = [];
      let pageToken = null;

      do {
        const response = await this.listSources(50, pageToken);
        allSources = allSources.concat(response.sources || []);
        pageToken = response.nextPageToken;
      } while (pageToken);

      const targetSource = allSources.find(source =>
        source.githubRepo?.owner === owner &&
        source.githubRepo?.repo === repo
      );

      if (!targetSource) {
        throw new Error(`Source not found: ${owner}/${repo}`);
      }

      console.log('Found source:', targetSource.name);
      return targetSource;
    } catch (error) {
      console.error('Error finding source:', error.message);
      throw error;
    }
  }

  // 3. Create Decryption Session
  async createSession(sourceName, prompt, title, requirePlanApproval = false) {
    try {
      const payload = {
        prompt: prompt,
        sourceContext: {
          source: sourceName,
          githubRepoContext: {
            startingBranch: 'master'
          }
        },
        title: title,
        requirePlanApproval: requirePlanApproval
      };

      const response = await this.client.post('/sessions', payload);

      console.log('Session created:', response.data);

      return response.data;
    } catch (error) {
      console.error('Error creating session:', error.response?.data || error.message);
      throw error;
    }
  }

  // 4. Get Session Details
  async getSession(sessionId) {
    try {
      const response = await this.client.get(`/sessions/${sessionId}`);
      return response.data;
    } catch (error) {
      console.error('Error getting session:', error.response?.data || error.message);
      throw error;
    }
  }

  // 5. List Sessions
  async listSessions(pageSize = 10, pageToken = null) {
    try {
      const params = { pageSize };
      if (pageToken) params.pageToken = pageToken;

      const response = await this.client.get('/sessions', { params });
      return response.data;
    } catch (error) {
      console.error('Error listing sessions:', error.response?.data || error.message);
      throw error;
    }
  }

  // 6. Approve Plan (if requirePlanApproval = true)
  async approvePlan(sessionId) {
    try {
      const response = await this.client.post(`/sessions/${sessionId}:approvePlan`);
      console.log('Plan approved for session:', sessionId);
      return response.data;
    } catch (error) {
      console.error('Error approving plan:', error.response?.data || error.message);
      throw error;
    }
  }

  // 7. List Activities in Session
  async listActivities(sessionId, pageSize = 30, pageToken = null) {
    try {
      const params = { pageSize };
      if (pageToken) params.pageToken = pageToken;

      const response = await this.client.get(`/sessions/${sessionId}/activities`, { params });
      return response.data;
    } catch (error) {
      console.error('Error listing activities:', error.response?.data || error.message);
      throw error;
    }
  }

  // 8. Send Message to Jules (for guidance/corrections)
  async sendMessage(sessionId, prompt) {
    try {
      const payload = { prompt };
      const response = await this.client.post(`/sessions/${sessionId}:sendMessage`, payload);

      console.log('Message sent to session:', sessionId);
      return response.data;
    } catch (error) {
      console.error('Error sending message:', error.response?.data || error.message);
      throw error;
    }
  }

  // 9. Monitor Session Progress
  async monitorSession(sessionId, pollIntervalMs = 10000, maxDuration = 1800000) {
    const startTime = Date.now();
    let lastActivityCount = 0;

    console.log(`Starting to monitor session: ${sessionId}`);

    while (Date.now() - startTime < maxDuration) {
      try {
        // Get latest activities
        const activities = await this.listActivities(sessionId, 50);

        // Check for new activities
        if (activities.activities && activities.activities.length > lastActivityCount) {
          const newActivities = activities.activities.slice(lastActivityCount);

          for (const activity of newActivities) {
            console.log('New activity:', {
              type: activity.type,
              status: activity.status,
              message: activity.message || 'No message'
            });

            // Check if session is complete or has errors
            if (activity.status === 'COMPLETED') {
              console.log('Session completed successfully!');
              return { status: 'completed', activities: activities.activities };
            }

            if (activity.status === 'FAILED' || activity.status === 'ERROR') {
              console.error('Session failed:', activity.message);
              return { status: 'failed', error: activity.message, activities: activities.activities };
            }
          }

          lastActivityCount = activities.activities.length;
        }

        // Get session status
        const session = await this.getSession(sessionId);
        console.log('Session status:', session.status);

        if (session.status === 'COMPLETED') {
          return { status: 'completed', session };
        }

        if (session.status === 'FAILED') {
          return { status: 'failed', session };
        }

        // Wait before next poll
        await this.sleep(pollIntervalMs);

      } catch (error) {
        console.error('Error monitoring session:', error.message);
        await this.sleep(pollIntervalMs);
      }
    }

    console.warn('Monitoring timeout reached');
    return { status: 'timeout' };
  }

  // Helper: Sleep function
  sleep(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
  }

  // 10. Get All Activities with Details
  async getAllActivities(sessionId) {
    try {
      let allActivities = [];
      let pageToken = null;

      do {
        const response = await this.listActivities(sessionId, 50, pageToken);
        allActivities = allActivities.concat(response.activities || []);
        pageToken = response.nextPageToken;
      } while (pageToken);

      return allActivities;
    } catch (error) {
      console.error('Error getting all activities:', error.message);
      throw error;
    }
  }

  // 11. Cancel Session (if needed)
  async cancelSession(sessionId) {
    try {
      // Note: Check Jules API docs for actual cancel endpoint
      const response = await this.client.post(`/sessions/${sessionId}:cancel`);
      console.log('Session cancelled:', sessionId);
      return response.data;
    } catch (error) {
      console.error('Error cancelling session:', error.response?.data || error.message);
      throw error;
    }
  }
}

module.exports = JulesAPIClient;