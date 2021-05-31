FROM ibmcom/ace-server:latest
COPY source/JGRACEIVT /home/aceuser/JGRACEIVT
RUN export LICENSE="accept" \
    && source /opt/ibm/ace-11/server/bin/mqsiprofile \
    && mkdir /home/aceuser/bars \
    && mqsipackagebar -a bars/jgr-cp4i-aceivt.bar -k JGRACEIVT \
    && mqsibar -a bars/jgr-cp4i-aceivt.bar -w /home/aceuser/ace-server \
    && chmod -R 777 /home/aceuser/ace-server/run/JGRACEIVT
