FROM mysql:5.7

ENV ENV="/root/.bashrc"
RUN echo "PS1='🐳⛁ \[\033[1;36m\][Database]\[\033[1;34m\] [\u] [\w]\n\\$ \[\033[0m\]'"   >> "$ENV"
RUN echo "alias ll='ls -lah --color'"  >> "$ENV"