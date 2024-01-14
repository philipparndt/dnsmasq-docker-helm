FROM alpine:3.18

# Install dnsmasq
RUN apk --no-cache add dnsmasq=2.89-r5

# DNS
EXPOSE 53/udp

# DHCP
EXPOSE 67/udp
EXPOSE 68/udp

ENTRYPOINT ["dnsmasq", "-k"]
