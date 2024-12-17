#!/bin/bash

# Переменные для настройки
BACKUP_DIR="/path/to/your/backups"  # Путь к директории с бэкапами
KEEP_LAST=5                          # Количество последних бэкапов для сохранения
RESOURCE_LIMITS="--cpu 50% --mem 512M --io 100M"  # Ограничения ресурсов

# Функция для ротации бэкапов
rotate_backups() {
    echo "Запуск ротации бэкапов в директории $BACKUP_DIR..."
    # Находим и удаляем старые бэкапы, оставляя только последние $KEEP_LAST
    ls -t "$BACKUP_DIR" | tail -n +$((KEEP_LAST + 1)) | xargs -I {} rm -f "$BACKUP_DIR/{}"
    echo "Ротация бэкапов завершена."
}
