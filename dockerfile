FROM jenkins/jenkins:lts

USER root

RUN apt-get update && \
    apt-get install -y wget unzip && \
    wget https://releases.hashicorp.com/terraform/1.5.2/terraform_1.5.2_linux_amd64.zip && \
    unzip terraform_1.5.2_linux_amd64.zip && \
    mv terraform /usr/local/bin/ && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm terraform_1.5.2_linux_amd64.zip


USER jenkins


EXPOSE 8080


ENTRYPOINT ["/usr/local/bin/jenkins.sh"]