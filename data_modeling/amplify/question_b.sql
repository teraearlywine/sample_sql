/*
Question B: no. events per user per product last week.
*/

SELECT  e.user_id
      , p.product
      , COUNT(e.id) AS event_count
FROM    facts.fact__events AS e
        JOIN dimensions.dim__products AS p 
          ON e.product_key = p.product_key
WHERE   e.timestamp >= TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 7 DAY)
GROUP BY
      e.user_id
    , p.product