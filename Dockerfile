FROM node:6.8

RUN npm install -g yo bower

WORKDIR /usr/src/app

# npm install deps
COPY ./package.json /usr/src/app/
COPY ./npm-shrinkwrap.json /usr/src/app/
RUN npm install

# bower install deps
COPY ./bower.json /usr/src/app/
RUN bower install --allow-root

COPY ./.yo-rc.json /usr/src/app/
COPY ./.bowerrc /usr/src/app/
COPY ./.editorconfig /usr/src/app/
COPY ./.jshintrc /usr/src/app/
COPY ./Gruntfile.coffee /usr/src/app/
COPY ./css /usr/src/app/css
COPY ./js /usr/src/app/js
COPY ./resources /usr/src/app/resources
COPY ./slides /usr/src/app/slides
COPY ./templates /usr/src/app/templates

EXPOSE 9000
EXPOSE 35729

#CMD ["node", "/usr/src/app/node_modules/grunt-cli/bin/grunt", "serve"]
CMD ["npm", "run", "server"]
