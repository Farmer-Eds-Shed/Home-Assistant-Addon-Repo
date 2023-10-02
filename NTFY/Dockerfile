FROM binwiederhier/ntfy
EXPOSE 80/tcp
COPY server.yml /etc/ntfy/server.yml
ENTRYPOINT ["ntfy", "serve"]
