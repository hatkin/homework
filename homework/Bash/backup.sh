#!/bin/bash

# Переменные для настройки
BACKUP_DIR="/path/to/your/backups"  # Путь к директории для бэкапов
RESOURCE_LIMITS="--cpu 50% --mem 512M --io 100M"  # Ограничения ресурсов

# Функция для резервного копирования
backup() {
    echo "Запуск резервного копирования в директории $BACKUP_DIR..."
    # Здесь добавьте команду для резервного копирования, например:
    # nice -n 19 ionice -c2 -n7 /path/to/backup_command $RESOURCE_LIMITS > "$BACKUP_DIR/backup_$(date +%Y%m%d_%H%M%S).tar.gz"
    echo "Резервное копирование завершено."
}
