FROM jetbrains/teamcity-agent
RUN apt-get update && \
    apt-get install -y unzip zip 