CREATE DATABASE IF NOT EXISTS car_showroom;
\c car_showroom

-- Запуск скриптов для создания объектов
\i create_hubs.sql
\i create_links.sql
\i create_satellites.sql
\i insert_data.sql