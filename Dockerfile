FROM ubuntu:focal

EXPOSE 80 443 1180 11443

RUN apt update && apt upgrade -y
RUN apt install curl iputils-ping telnet grep \
                arp-scan tcpdump traceroute -y 
CMD ["ping", "localhost"]

