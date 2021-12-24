FROM melashri/overleaf:latest

RUN apt-get update -y && \
    apt-get install pandoc -y && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
COPY LatexRunner.js /var/www/sharelatex/clsi/app/js/pandoc.wrapper
COPY pandoc.wrapper /usr/bin
