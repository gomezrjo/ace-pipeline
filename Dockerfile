FROM cp.icr.io/cp/appc/ace-server-prod@sha256:f9b2b5e385f462d60a3fedf2aa7366b3bc304e971c89fafe6425cf2949a472c6
COPY source/JGRACEIVT /home/aceuser/JGRACEIVT
RUN export LICENSE="accept" \
    && source /opt/ibm/ace-11/server/bin/mqsiprofile \
    && mkdir /home/aceuser/bars \
    && mqsipackagebar -a bars/jgr-cp4i-aceivt.bar -k JGRACEIVT \
    && mqsibar -a bars/jgr-cp4i-aceivt.bar -w /home/aceuser/ace-server \
    && chmod -R 777 /home/aceuser/ace-server/run/JGRACEIVT
