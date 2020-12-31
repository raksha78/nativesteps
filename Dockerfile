FROM jfpip.jfrog.io/jfrog/pipelines-u16:${VERSION}

ADD install.sh /node/install.sh
RUN chmod +x /node/install.sh
RUN /node/install.sh && rm -rf /tmp && mkdir /tmp
ENV NVM_DIR="/root/.nvm"
ENV NODE_VERSION "8.17.0"
ENV NODE_PATH $NVM_DIR/v$LANGVERSION/lib/node_modules
ENV PATH $NVM_DIR/versions/node/v$LANGVERSION/bin:$PATH
