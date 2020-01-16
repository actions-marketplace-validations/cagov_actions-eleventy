FROM node:10-alpine
RUN npm install -g @11ty/eleventy
RUN npm install -g @11ty/eleventy-plugin-rss
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]