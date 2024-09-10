/*
Question E: anything else?

No. active users per product 
*/

SELECT  p.product_name
      , COUNT(DISTINCT e.user_id) AS active_user_count
FROM    facts.fact__events AS e
        JOIN dimensions.dim__products AS p 
          ON e.product_key = p.product_key
WHERE   e.event_ts >= TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 30 DAY)
        AND e.is_active_user = TRUE
GROUP BY p.product_name
;