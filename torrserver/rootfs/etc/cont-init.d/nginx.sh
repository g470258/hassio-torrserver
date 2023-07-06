#!/command/with-contenv bashio
# ==============================================================================
# Home Assistant Community Add-on: torrserver
# Configures NGINX for use with the torrserver server
# ==============================================================================

# Generate direct access configuration, if enabled.
if bashio::var.has_value "$(bashio::addon.port 8090)"; then
    bashio::config.require.ssl
    bashio::var.json \
        certfile "$(bashio::config 'certfile')" \
        keyfile "$(bashio::config 'keyfile')" \
        port "^$(bashio::addon.port 8090)" \
        ssl "^$(bashio::config 'ssl')" \
        | tempio \
            -template /etc/nginx/templates/direct.gtpl \
            -out /etc/nginx/servers/direct.conf
fi
