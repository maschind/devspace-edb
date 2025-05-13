FROM ubi9:latest 
RUN curl -sSfL https://github.com/EnterpriseDB/kubectl-cnp/raw/main/install.sh | sh -s -- -b /usr/local/bin
