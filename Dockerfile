FROM codercom/code-server:3.4.1

RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - 
RUN sudo apt-get install -y gcc g++ make iputils-ping httpie nodejs 

RUN npm config set registry https://registry.npmjs.org/
RUN sudo npm install yarn  -g
RUN sudo yarn global add pm2 
RUN sudo yarn global add cross-env 
RUN sudo yarn global add nodemon