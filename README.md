# MTI_BD_RomanMias

Лабораторные работы по БД.

## Состав
- `database/` — SQL-скрипты
- `screenshots/` — скриншоты из Azure Data Studio
- `report/` — отчёт (по ГОСТ)

## Запуск SQL Server в Docker
```bash
docker run -d --name mssql -p 1433:1433 \
  -e ACCEPT_EULA=Y \
  -e MSSQL_SA_PASSWORD='StrongPassw0rd!' \
  mcr.microsoft.com/mssql/server:2022-latest


