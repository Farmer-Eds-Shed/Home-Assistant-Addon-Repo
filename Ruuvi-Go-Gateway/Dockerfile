FROM ghcr.io/scrin/ruuvi-go-gateway


# Copy Ruuvi Config.yml
Copy /ruuvi.yml /config.yml

# Copy data for add-on
COPY run.sh /run.sh
RUN chmod a+x /run.sh
# RUN /run.sh


CMD ["/run.sh"]


