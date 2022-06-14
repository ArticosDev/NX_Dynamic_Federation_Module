# STAGE 1
FROM node:14-alpine3.15 as angular-build

ARG ENV=prod
ARG APP=app-auth
ARG PORT=4200


ENV ENV ${ENV}
ENV APP ${APP}

WORKDIR /app
COPY ./dist/apps/${APP}/* /app/dist/


# STAGE 2       
# FROM nginx:alpine
FROM nginx:latest 

ENV PORT 8080
ENV HOST 0.0.0.0
COPY ./nginx.conf /etc/nginx/nginx.conf

RUN rm -rf /usr/share/nginx/html/*

COPY --from=angular-build /app/dist/ /usr/share/nginx/html

RUN chown -R nginx:nginx /usr/share/nginx/html && chmod -R 755 /usr/share/nginx/html && \
        chown -R nginx:nginx /var/cache/nginx && \
        chown -R nginx:nginx /var/log/nginx && \
        chown -R nginx:nginx /etc/nginx/conf.d
RUN touch /var/run/nginx.pid && \
        chown -R nginx:nginx /var/run/nginx.pid

USER nginx

EXPOSE ${PORT} 8080
CMD ["nginx", "-g", "daemon off;"]