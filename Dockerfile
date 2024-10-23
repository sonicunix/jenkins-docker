FROM jenkins/jenkins:lts

# Install Docker
USER root
RUN apt-get update && \
    apt-get install -y docker.io

# Allow Jenkins to use Docker without sudo
RUN usermod -aG docker jenkins

# Switch back to Jenkins user
USER jenkins
