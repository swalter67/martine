FROM node:lts

RUN mkdir app
RUN chmod 777 app
WORKDIR /app

COPY package*.json ./

# Supprimer le dossier node_modules s'il existe
RUN rm -rf node_modules

RUN npm install -g npm@9.6.7
RUN npm install -g typescript
RUN npm install -g @nestjs/cli

#RUN nest new toto -p npm



COPY . .

EXPOSE 3000

CMD [ "/bin/sh", "-c", "npm install && npm run build && npm start" ]

