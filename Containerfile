FROM ubi9:latest
RUN dnf -y install git; \
    dnf -y clean all;
RUN curl -sSfL https://github.com/EnterpriseDB/kubectl-cnp/raw/main/install.sh | sh -s -- -b /usr/local/bin
ADD oc /usr/local/bin
RUN ln -s /usr/local/bin/oc /usr/local/bin/kubectl
USER user
