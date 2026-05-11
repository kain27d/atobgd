# 빌드 환경
FROM node:18

# 작업 디렉토리
WORKDIR /app

# 패키지 먼저 복사 (캐시 활용)
COPY package*.json ./

# 의존성 설치
RUN npm install

# 소스코드 복사
COPY . .

# 빌드 (lint)
RUN npm run build

# 앱 실행
CMD ["node", "src/index.js"]
