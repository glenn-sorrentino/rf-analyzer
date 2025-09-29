.PHONY: up down logs ps rebuild

up:
\tdocker compose up -d --build

down:
\tdocker compose down

logs:
\tdocker compose logs -f --tail=200

ps:
\tdocker compose ps

rebuild:
\tdocker compose build --no-cache
