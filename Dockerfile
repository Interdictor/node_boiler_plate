FROM node:10.16.3-buster-slim AS base

ENV WORKPATH /opt/app/
ENV USERNAME node
WORKDIR $WORKPATH

RUN chown -R $USERNAME $WORKPATH

USER node

COPY --chown=$USERNAME:$USERNAME package* $WORKPATH
RUN npm install --only=prod --no-progress

CMD ["npm", "start"]


FROM base AS prod
COPY --chown=$USERNAME:$USERNAME . $WORKPATH


FROM base AS dev_dependencies
RUN npm install --no-progress
COPY --chown=$USERNAME:$USERNAME . $WORKPATH


FROM dev_dependencies AS ci

FROM dev_dependencies AS dev
VOLUME "${WORKPATH}/node_modules/"
