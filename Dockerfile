FROM centos:7
MAINTAINER martinsauve@gmail.com



RUN yum -y install wget && \
    yum -y install wget

CMD  curl https://github.com/openshift/origin/releases/download/v1.3.0/openshift-origin-client-tools-v1.3.0-3ab7af3d097b57f933eccef684a714f2368804e7-linux-64bit.tar.gz -o /tmp/oc.tar.gz && \
     tar zxvf /tmp/oc.tar.gz -C /tmp/

CMD  mv /tmp/openshift-origin-client-tools-v1.3.0-3ab7af3d097b57f933eccef684a714f2368804e7-linux-64bit.tar.gz/oc /usr/bin/ && \
    rm -rf /tmp/oc.tar.gz 

CMD tail -f /dev/null

