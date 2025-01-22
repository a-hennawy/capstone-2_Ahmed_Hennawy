\echo 'Delete and recreate invoice db?'
\prompt 'Return for yes or control-C to cancel > ' foo

DROP DATABASE IF EXISTS invoice_db;
CREATE DATABASE invoice_db;
\connect invoice_db

\i invoice-schema.sql
\i invoice-seed.sql

