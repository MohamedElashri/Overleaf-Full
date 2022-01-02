FROM melashri/overleaf:latest

RUN apt-get update -y && \
    apt-get install pandoc -y && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
COPY LatexRunner.js /var/www/sharelatex/clsi/app/js/pandoc.wrapper
COPY ProjectEntityUpdateHandler.js /var/www/sharelatex/web/app/src/Features/Project/ProjectEntityUpdateHandler.js
COPY SettingsController.js /var/www/sharelatex/web/frontend/js/ide/settings/controllers/SettingsController.js
COPY pandoc.wrapper /usr/bin
