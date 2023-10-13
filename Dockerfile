FROM 192.168.1.52/tenx_containers/oraclejdk:8u151

ENV PROFILE       test

ENV SENTINEL_DASHBOARD_ADDR spring-cloud-sentinel:8080
ENV SENTINEL_PORT 8888
ENV SENTINEL_IP localhost
ENV NACOS_CONFIG_ENABLED    true
ENV NACOS_ADDR              spring-cloud-discovery:8848
ENV NACOS_NAMESPACE         default
ENV NACOS_GROUP             test
ENV NACOS_USERNAME          nacos
ENV NACOS_PASSWORD          nacos
ENV SERVICE_NAME            fw-test-project
ENV PASS_NS                 nacos

ENV JVM="-Xms256m -Xmx1g -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap -Djava.security.egd=file:/dev/./urandom"

ADD *.jar /app/app.jar

WORKDIR "/app"

EXPOSE 8080

CMD java -jar /app/app.jar
