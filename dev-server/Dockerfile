FROM pangliang/ubuntu
MAINTAINER pangliang "418094911@qq.com"

#install 
RUN apt-get update \
	&& apt-get install -y git build-essential

#zsh
RUN apt-get install -y zsh \
	&& git clone https://github.com/pangliang/oh-my-zsh.git ~/.oh-my-zsh \
	&& cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc \
	&& chsh -s /bin/zsh 

#tmux
RUN apt-get install -y tmux \
	&& git clone https://github.com/pangliang/oh-my-tmux.git ~/.tmux \
	&& cd ~/ \ 
	&& ln -s .tmux/.tmux.conf \
	&& ln -s .tmux/.tmux.conf.local

#vim
RUN apt-get install -y vim-nox \
	&& git clone https://github.com/pangliang/oh-my-vim.git ~/.vim \
	&& cd ~/.vim \
	&& ./init.sh \
    && ln -s ~/.vim/vimrc ~/.vimrc

#sshd
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd
ADD sshd_config /etc/ssh/sshd_config

# supervisord
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Expose ports.
EXPOSE 22



