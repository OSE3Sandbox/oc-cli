FROM centos:7
MAINTAINER martinsauve@gmail.com

RUN yum -y install wget && \
    yum -y install git

CMD  curl -L https://github.com/openshift/origin/releases/download/v1.3.0/openshift-origin-client-tools-v1.3.0-3ab7af3d097b57f933eccef684a714f2368804e7-linux-64bit.tar.gz -o /tmp/oc.tar.gz && \
     cd /tmp && \
     gzip -d oc.tar.gz && \
     tar -xvf oc.tar && \
     mv openshift-origin-client-tools-v1.3.0-3ab7af3d097b57f933eccef684a714f2368804e7-linux-64bit/oc /usr/bin

CMD tail -f /dev/null

