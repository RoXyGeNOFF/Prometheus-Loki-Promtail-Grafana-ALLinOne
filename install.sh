#!/usr/bin/env bash
set -euo pipefail

if [ ! -f .env ]; then
  echo "Файл .env не найден. Создаю из .env.example"
  cp .env.example .env
  # Генерация случайного пароля для Grafana
  PASS=$(tr -dc A-Za-z0-9 </dev/urandom | head -c 16)
  sed -i "s|GRAFANA_ADMIN_PASSWORD=changeme|GRAFANA_ADMIN_PASSWORD=${PASS}|" .env
  echo "Пароль Grafana сгенерирован: ${PASS}"
fi

docker compose up -d
echo "Сервисы запущены."
echo "Grafana: http://localhost:3000 (логин: $(grep GRAFANA_ADMIN_USER .env | cut -d= -f2))"
