FROM php:8.1-apache
RUN apt-get update && apt-get install -y \ 
    git vim unzip htop npm \
    && docker-php-ext-install -j$(nproc) pdo_mysql \
    && docker-php-ext-enable pdo_mysql
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && apt-get install -y nodejs
RUN curl https://www.npmjs.com/install.sh | sh
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN mkdir /root/.ssh
COPY config/ssh /root/.ssh
RUN chmod 600 /root/.ssh/id_rsa
COPY config/scripts/git-prompt.sh /root/.git-prompt.sh

RUN a2enmod rewrite

ENV ENV="/root/.bashrc"
RUN echo "source ~/.git-prompt.sh" >> "$ENV"
RUN echo "PS1='🐳 \[\033[1;36m\][Webserver]\[\033[1;34m\] [\u] [\w]\$(__git_ps1)\[\e[00m\] '"   >> "$ENV"
RUN echo "alias ll='ls -lah --color'"  >> "$ENV"
