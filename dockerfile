FROM groonga/pgroonga:4.0.0-debian-15

# Install dependencies using wget instead of git, download pgvector tarball, build and cleanup
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    wget \
    build-essential \
    postgresql-server-dev-15 && \
    cd /tmp && \
    wget https://github.com/pgvector/pgvector/archive/refs/tags/v0.8.0.tar.gz && \
    tar -xzf v0.8.0.tar.gz && \
    cd pgvector-0.8.0 && \
    make && \
    make install && \
    cd / && \
    rm -rf /tmp/pgvector-0.8.0 v0.8.0.tar.gz && \
    apt-get remove -y wget build-essential postgresql-server-dev-15 && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 5432