FROM centos:7

WORKDIR /home

RUN yum install epel-release -y \
    && curl -o /etc/yum.repos.d/dperson-neovim-epel-7.repo https://copr.fedorainfracloud.org/coprs/dperson/neovim/repo/epel-7/dperson-neovim-epel-7.repo \
    && yum update -y \
    && yum install ansible neovim -y \
    && echo alias vim=nvim >> /etc/profile.d/vim.sh \
    && chmod 755 /etc/profile.d/vim.sh

CMD ["/bin/bash","-l"]
