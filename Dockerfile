FROM icr.io/appc-dev/ace-server@sha256:9c0ab33cf01233b52e1273e559c1b1daa2f23282430ecd2c48001fc0469132f3
COPY source/JGRACEIVT /home/aceuser/JGRACEIVT
RUN export LICENSE="accept" \
    && source /opt/ibm/ace-11/server/bin/mqsiprofile \
    && mkdir /home/aceuser/bars \
    && mqsipackagebar -a bars/jgr-cp4i-aceivt.bar -k JGRACEIVT \
    && mqsibar -a bars/jgr-cp4i-aceivt.bar -w /home/aceuser/ace-server \
    && chmod -R 777 /home/aceuser/ace-server/run/JGRACEIVT
