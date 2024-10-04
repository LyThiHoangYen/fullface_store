FROM node:16

WORKDIR /app

COPY package*.json ./

# Cài đặt các phụ thuộc và nodemon, cài bcryptjs thay vì bcrypt
RUN npm install && npm install -g nodemon && npm install bcryptjs

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
