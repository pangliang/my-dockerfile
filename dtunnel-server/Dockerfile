FROM alpine
ADD http://dog-tunnel.tk/download/linux64 /data/
WORKDIR /data
RUN chmod +x dtunnel dtunnel_s
EXPOSE 8018 8000
ENTRYPOINT ["./dtunnel_s"]
