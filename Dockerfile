FROM node:16-bullseye-slim as base

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
        build-essential \
        python3 && \
    rm -fr /var/lib/apt/lists/* && \
    rm -rf /etc/apt/sources.list.d/*


# RUN npm install --global --quiet npm truffle ganache
RUN yarn global add truffle ganache

FROM base as truffle

RUN mkdir -p /home/app
WORKDIR /home/app

COPY package.json /home/app
# COPY package-lock.json /home/app

RUN yarn 
# RUN npm install --quiet

COPY truffle-config.js /home/app
COPY contracts /home/app/contracts
COPY migrations /home/app/migrations/
COPY test /home/app/test/

# CMD ["truffle", "version"]
# keep container running
CMD tail -f /dev/null 

FROM base as ganache

RUN mkdir -p /home
WORKDIR /home
# EXPOSE 8545

EXPOSE 8545/tcp


# ENTRYPOINT ["ganache"]
CMD ganache -p 8545 -h 0.0.0.0
# CMD tail -f /dev/null 
