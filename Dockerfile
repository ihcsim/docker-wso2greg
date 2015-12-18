# 
# WSO2 Governance Registry 5.1.0
#
FROM isim/oraclejava:1.7.0_80
MAINTAINER Ivan Sim, ihcsim@gmail.com

ENV VERSION=5.1.0

RUN wget -P /opt https://s3-us-west-2.amazonaws.com/wso2-stratos/wso2greg-$VERSION.zip && \
    apt-get update && \
    apt-get install -y zip && \
    apt-get clean && \
    unzip /opt/wso2greg-$VERSION.zip -d /opt && \
    rm /opt/wso2greg-$VERSION.zip

WORKDIR /opt/wso2greg-$VERSION
EXPOSE 9443 9763
ENTRYPOINT ["bin/wso2server.sh"]
