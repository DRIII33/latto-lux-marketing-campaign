CREATE OR REPLACE VIEW `driiiportfolio.latto_lux_campaign.lttx_combined_view` AS
SELECT
  -- Select all columns from the physical sales table
  t1.transaction_id,
  t1.date AS physical_sale_date,
  t1.time AS physical_sale_time,
  t1.retailer_location_city,
  t1.ticket_batch_id,

  -- Select all columns from the digital app usage table
  t2.user_id,
  t2.date AS app_usage_date,
  t2.time AS app_usage_time,
  t2.app_session_length_minutes,
  t2.feature_used,
  t2.social_share_count,

  -- Use the unique_code to link the two datasets
  t1.unique_code
FROM
  `driiiportfolio.latto_lux_campaign.physical_sales` AS t1
JOIN
  `driiiportfolio.latto_lux_campaign.digital_app_usage` AS t2
ON
  t1.unique_code = t2.unique_code;
