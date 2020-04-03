FROM haskell:8.6.5

ENV LANG=C.UTF-8 \
  LC_ALL=C.UTF-8

RUN apt-get update && apt-get install --yes \
  git \
  ssh

RUN cabal v1-update

RUN cabal v1-install hakyll-4.12.5.2

ENTRYPOINT ["bash"]
