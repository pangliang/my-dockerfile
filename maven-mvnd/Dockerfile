ARG OPENJDK_IMAGE
FROM ${OPENJDK_IMAGE}

RUN apt-get update \
	&& apt-get install -y wget curl procps \
	&& rm -rf /var/lib/apt/lists/*

ARG MVND_VERSION
RUN wget -q -O - https://downloads.apache.org/maven/mvnd/${MVND_VERSION}/maven-mvnd-${MVND_VERSION}-linux-amd64.tar.gz | tar -xzf - -C /usr/share/ \
	 && ln -s /usr/share/maven-mvnd-${MVND_VERSION}-linux-amd64/bin/mvnd /usr/bin/mvnd \
	 && ln -s /usr/share/maven-mvnd-${MVND_VERSION}-linux-amd64/maven/bin/mvnd /usr/bin/mvn
ENV MAVEN_CONFIG=/root/.m2
ENV MAVEN_HOME=/usr/share/maven-mvnd-${MVND_VERSION}-linux-amd64/maven

CMD ["mvnd"]
