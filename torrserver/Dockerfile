ARG BUILD_FROM
FROM $BUILD_FROM

# Copy root filesystem
COPY rootfs /
RUN chmod a+x /run.sh

# Setup base
RUN apk add --no-cache 

# Build arguments
ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_DESCRIPTION
ARG BUILD_NAME
ARG BUILD_REF
ARG BUILD_REPOSITORY
ARG BUILD_VERSION

ENV BUILD_ARCH=$BUILD_ARCH
# Labels
LABEL \
    io.hass.name="${BUILD_NAME}" \
    io.hass.description="${BUILD_DESCRIPTION}" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="Aleksandr Trubilin <aatrubilin@gmail.com>" \
    org.opencontainers.image.title="${BUILD_NAME}" \
    org.opencontainers.image.description="${BUILD_DESCRIPTION}" \
    org.opencontainers.image.vendor="TorrServer Home Assistant addon" \
    org.opencontainers.image.authors="123" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.url="https://github.com/g470258/hassio-torrserver" \
    org.opencontainers.image.source="https://github.com/${BUILD_REPOSITORY}" \
    org.opencontainers.image.documentation="https://github.com/${BUILD_REPOSITORY}/blob/main/README.md" \
    org.opencontainers.image.created=${BUILD_DATE} \
    org.opencontainers.image.revision=${BUILD_REF} \
    org.opencontainers.image.version=${BUILD_VERSION}
RUN mkdir -p /share/torrserver
WORKDIR /share/torrserver



RUN mkdir -p /share/torrserver
WORKDIR /share/torrserver

CMD [ "/run.sh" ]

