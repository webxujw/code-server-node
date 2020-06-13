FROM codercom/code-server:3.4.1

RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - 
RUN sudo apt-get install -y gcc g++ make iputils-ping httpie nodejs 
RUN curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - 
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list 
RUN sudo apt-get install -y yarn 
RUN sudo apt-get upgrade -y
RUN sudo yarn global add pm2