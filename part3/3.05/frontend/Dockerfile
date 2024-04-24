FROM node:16

WORKDIR /frontend

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN npm install --no-optional && npm run build && npm install --no-optional -g serve && useradd -m frontend_user
USER frontend_user

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]