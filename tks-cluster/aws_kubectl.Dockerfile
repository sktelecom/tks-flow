# make a docker image with this CLI: sudo docker build -f ./aws_kubectl.Dockerfile .
FROM amazon/aws-cli

# RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
# if the line above was fail, download it in locally and use the line below
COPY kubectl /usr/bin/kubectl
RUN chmod +x /usr/bin/kubectl