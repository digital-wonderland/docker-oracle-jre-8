# Oracle JRE 8

FROM digitalwonderland/base

RUN rpm --rebuilddb && curl -L -C - -b "oraclelicense=accept-securebackup-cookie" -O http://download.oracle.com/otn-pub/java/jdk/8u40-b25/jre-8u40-linux-x64.rpm \
 && rpm -Uvh jre-*-linux-x64.rpm \
 && rm jre-*-linux-x64.rpm

RUN yum install -y unzip && yum clean all \
 && cd /tmp \
 && curl -L -C - -b "oraclelicense=accept-securebackup-cookie" -O http://download.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip \
 && unzip jce_policy-8.zip \
 && mv UnlimitedJCEPolicyJDK8/*.jar /usr/java/jre*/lib/security/ \
 && rm -rf jce_policy-8.zip UnlimitedJCEPolicyJDK8
