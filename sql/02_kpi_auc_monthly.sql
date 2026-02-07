CREATE OR REPLACE VIEW auc_demo.kpi_auc_monthly AS
SELECT
  p.ref_date AS month_end,
  SUM(p.quantity * p.price * f.fx_to_brl) AS total_auc_brl
FROM auc_demo.positions_raw p
JOIN auc_demo.fx_rates f
  ON p.ref_date = f.ref_date
 AND p.currency = f.currency
GROUP BY p.ref_date
ORDER BY p.ref_date;
