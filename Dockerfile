FROM node:latest

# run installation/ build commands.
RUN npm -g config set user root & npm i --quiet --no-progress --unsafe-perm -g @nteract/commuter

ENV HOST=0.0.0.0
ENV PORT=4000

EXPOSE 4000

CMD npm run start
