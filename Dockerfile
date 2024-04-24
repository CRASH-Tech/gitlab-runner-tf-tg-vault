FROM alpine:3.19.1

RUN apk update
RUN apk add curl wget bash jq unzip

RUN wget https://github.com/gruntwork-io/terragrunt/releases/download/v0.57.8/terragrunt_linux_amd64 -O /usr/local/bin/terragrunt

RUN wget https://releases.hashicorp.com/terraform/1.8.2/terraform_1.8.2_linux_amd64.zip -O /tmp/terraform_1.8.2_linux_amd64.zip
RUN unzip /tmp/terraform_1.8.2_linux_amd64.zip -d /usr/local/bin/

RUN wget https://releases.hashicorp.com/vault/1.16.2/vault_1.16.2_linux_amd64.zip -O /tmp/vault_1.16.2_linux_amd64.zip
RUN unzip /tmp/vault_1.16.2_linux_amd64.zip -d /usr/local/bin/

RUN chmod a+x /usr/local/bin/*

RUN apk add git openssh
