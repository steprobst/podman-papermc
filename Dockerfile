FROM alpine:3.17

COPY scripts/getpaperserver.sh /getpaperserver.sh 

RUN apk update \\
	&& apk upgrade --no-cache \
        && apk add --no-cache openjdk17-jre curl jq \
	&& ash getpaperserver.sh 1.19.3 \
	&& chown 1:1 /minecraft.jar \
	&& mkdir /minecraft \
	&& chown 1:1 /minecraft


EXPOSE 25565/tcp

WORKDIR /minecraft

ENTRYPOINT [ "java" ]

CMD ["-Xmx2G", "-Xms2G", "-jar", "/minecraft.jar", "--nogui"]
