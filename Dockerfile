# ดึง image ของ node มาใช้
FROM node:alpine

# กำหนด directory ที่จะใช้เก็บโค้ด
WORKDIR /usr/app

# คัดลอกไฟล์ package.json และ package-lock.json ไปยัง container
COPY ./package*.json ./

# ติดตั้ง package ที่ระบุในไฟล์ package.json
RUN npm install

# คัดลอกไฟล์ทั้งหมดไปยัง container
COPY . .

# กำหนด port ที่จะใช้
EXPOSE 3000

# รันคำสั่ง npm start เมื่อ container ถูกสร้างขึ้นมา
CMD ["npm", "start"]