-- Database
CREATE DATABASE IF NOT EXISTS auc_demo;

-- =========================
-- Positions (CSV)
-- =========================
DROP TABLE IF EXISTS auc_demo.positions_raw;

CREATE EXTERNAL TABLE auc_demo.positions_raw (
  ref_date string,
  client_id string,
  account_id string,
  product_type string,
  instrument_id string,
  asset_class string,
  quantity double,
  price double,
  currency string,
  source string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'field.delim' = ',',
  'serialization.format' = ','
)
STORED AS TEXTFILE
LOCATION 's3://auc-indicator-anna-2026-02-07/raw/positions/'
TBLPROPERTIES ('skip.header.line.count'='1');

-- =========================
-- FX Rates (CSV)
-- =========================
DROP TABLE IF EXISTS auc_demo.fx_rates;

CREATE EXTERNAL TABLE auc_demo.fx_rates (
  ref_date string,
  currency string,
  fx_to_brl double
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'field.delim' = ',',
  'serialization.format' = ','
)
STORED AS TEXTFILE
LOCATION 's3://auc-indicator-anna-2026-02-07/raw/fx/'
TBLPROPERTIES ('skip.header.line.count'='1');
