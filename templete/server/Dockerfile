# Multi-stage Build for Node Backend

# In our first stage, we need to install all the TypeScript-related dependencies in order to compile our TypeScript.
# Stage 1: TypeScript Compiler
FROM node:17.2-bullseye as ts-compiler
#RUN apk update
WORKDIR /usr/app
COPY package*.json ./
COPY tsconfig*.json ./
RUN npm install

COPY ./src .
RUN npm run build

# After we copy over source into the container in our Dockerfile, we want to do this compilation with npm run build.

# The purpose of this stage is just to strip all things TypeScript from our image.
# Stage 2: TypeScript Remover
FROM node:14-alpine3.10 as ts-remover
WORKDIR /usr/app
COPY --from=ts-compiler /usr/app/package*.json ./
COPY --from=ts-compiler /usr/app/build ./
RUN npm install --only=production
#We can copy all the production-ready files over to the root of the container, and then install only the dependencies needed to run the application (no devDependencies).

# Lastly, we can run this all on a distroless image, a very small, secure base image developed by Google.
# Stage 3: Distroless Production
FROM gcr.io/distroless/nodejs:14
WORKDIR /usr/app
COPY --from=ts-remover /usr/app ./
USER 1000
EXPOSE 3001
CMD ["index.js"]
