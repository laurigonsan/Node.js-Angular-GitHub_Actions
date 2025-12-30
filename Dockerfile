# Stage 1: Build frontend
FROM node:20 AS frontend-build
WORKDIR /app

# Copiar y instalar dependencias del frontend
COPY frontend/package*.json ./frontend/
RUN cd frontend && npm install

# Copiar el código del frontend y construirlo
COPY frontend ./frontend
RUN cd frontend && npm run build

# Stage 2: Setup backend
FROM node:20
WORKDIR /app

# Copiar e instalar dependencias del backend
COPY backend/package*.json ./backend/
RUN cd backend && npm install --production

# Copiar código del backend
COPY backend ./backend

# Copiar build del frontend al backend (por ejemplo, /backend/public)
COPY --from=frontend-build /app/frontend/dist ./backend/public

# Exponer el puerto (ajustar según tu backend)
EXPOSE 3000

# Comando por defecto
CMD ["node", "backend/index.js"]
