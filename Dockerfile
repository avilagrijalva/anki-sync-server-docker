FROM docker.io/library/alpine:latest

COPY --chmod=755 target/anki-sync-server-linux-amd64/anki-sync-server /usr/local/bin/anki-sync-server

ENV SYNC_BASE="/config" \
    SYNC_PORT="27701"

CMD [ "/usr/local/bin/anki-sync-server" ]
