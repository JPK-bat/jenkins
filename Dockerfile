# Use the official Jenkins LTS as a base image
FROM jenkins/jenkins:lts

# Switch to root to install packages
USER root

# Install Blue Ocean plugin and any other necessary plugins
RUN jenkins-plugin-cli --plugins blueocean

# You can add more plugins as needed, for example:
# RUN jenkins-plugin-cli --plugins blueocean docker-workflow workflow-aggregator

# Switch back to jenkins user
USER jenkins

# Expose necessary ports
EXPOSE 8080 50000

# Set up Jenkins Home directory (optional, not necessary if you mount it externally)
ENV JENKINS_HOME /var/jenkins_home

# Use the default entrypoint and command from Jenkins
ENTRYPOINT ["/usr/bin/tini", "--", "/usr/local/bin/jenkins.sh"]
