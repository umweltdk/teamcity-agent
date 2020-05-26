FROM jetbrains/teamcity-agent
USER root
RUN apt-get update && \
    apt-get install -y unzip zip git-lfs && \
    rm -rf /var/lib/apt/lists/ && \
    apt-get clean all
USER buildagent
COPY gitconfig /home/buildagent/.gitconfig