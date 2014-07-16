# Oracle JRE 8

FROM digitalwonderland/base

RUN curl -L -C - -b "oraclelicense=accept-securebackup-cookie" -O http://download.oracle.com/otn-pub/java/jdk/8u11-b12/jre-8u11-linux-x64.rpm \
 && rpm -Uvh jre-*-linux-x64.rpm \
 && rm jre-*-linux-x64.rpm
