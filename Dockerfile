FROM opengrok/docker:1.7

ARG KERNEL_VERSION=6.0

RUN mkdir -p /opengrok/src
RUN cd /opengrok/src \
    && curl https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/snapshot/linux-${KERNEL_VERSION}.tar.gz \
       --output linux.tar.gz \
    && tar -xvf linux.tar.gz && rm linux.tar.gz

# Trigger opengrok indexer manually
#RUN opengrok-indexer \
#      -J=-Djava.util.logging.config.file=/opengrok/etc/logging.properties \
#      -a /opengrok/lib/opengrok.jar -- \
#      -c /usr/local/bin/ctags \
#      -s /opengrok/src -d /opengrok/data -H -P -S -G \
#      -W /opengrok/etc/configuration.xml -U http://localhost:8080/

WORKDIR /usr/local/tomcat
EXPOSE 8080
CMD ["/scripts/start.py"]
