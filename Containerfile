FROM ubi9:latest

ARG USER_HOME_DIR="/home/user"
ARG WORK_DIR="/projects"

ENV HOME=${USER_HOME_DIR}
ENV BUILDAH_ISOLATION=chroot

COPY --chown=0:0 entrypoint.sh /

RUN dnf -y install git bc gettext; \
    dnf -y clean all; \
    mkdir -p ${USER_HOME_DIR} ; \
    mkdir -p ${WORK_DIR} ; \
    chgrp -R 0 /home ; \
    chmod +x /entrypoint.sh ; \
    chmod -R g=u /etc/passwd /etc/group /home ${WORK_DIR}

RUN curl -sSfL https://github.com/EnterpriseDB/kubectl-cnp/raw/main/install.sh | sh -s -- -b /usr/local/bin
ADD oc /usr/local/bin
RUN ln -s /usr/local/bin/oc /usr/local/bin/kubectl

WORKDIR ${WORK_DIR}
ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "tail", "-f", "/dev/null" ]