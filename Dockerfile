FROM node:10.16.0-alpine
ENV LAST_UPDATED 20190802T115000

# Copy the source code
COPY . /app

# Change working directory
WORKDIR /app

# Install dependencies
RUN npm install

# Expose API port to the ouside
EXPOSE 1337

# Launch application
CMD ["npm", "start"]