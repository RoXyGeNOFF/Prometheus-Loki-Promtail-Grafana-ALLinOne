# Grafana Deploy — Improved Edition

Полный стек мониторинга с быстрой установкой через Docker Compose.

## Состав

- **Prometheus** — сбор и хранение метрик
- **Loki** — хранение логов
- **Promtail** — сбор логов Docker
- **Grafana** — визуализация метрик и логов

## Быстрый старт

```bash
git clone https://example.com/grafana-deploy-improved](https://github.com/RoXyGeNOFF/Prometheus-Loki-Promtail-Grafana-ALLinOne.git
cd PrometheusLokiPromtailGrafanaALLinOne
chmod +x install.sh
./install.sh
```

После запуска:
- Grafana: http://localhost:3000 (логин и пароль выводятся при установке)
- Prometheus: http://localhost:9090
- Loki API: http://localhost:3100
- Promtail: порт 9080

## Полезные команды

```bash
./status.sh     # Проверить статус контейнеров
./logs.sh       # Смотреть логи всех сервисов
./update.sh     # Обновить образы и перезапустить
./uninstall.sh  # Остановить и удалить контейнеры
```

## Настройка
- Измените `.env` для задания паролей и параметров хранения данных.
- Добавьте свои дашборды в `grafana/dashboards/` — они загрузятся автоматически.

## Лицензия
MIT
