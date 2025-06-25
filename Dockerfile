# Используем официальный базовый образ Python 3.10 slim (облегчённый)
FROM python:3.10-slim

# Рабочая директория внутри контейнера
WORKDIR /app

# Копируем файл зависимостей
COPY requirements.txt .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Копируем все файлы проекта в контейнер
COPY . .

# Указываем, что контейнер слушает порт 5000 (Flask по умолчанию)
EXPOSE 5000

# Запускаем приложение Flask
CMD ["python", "app.py"]
