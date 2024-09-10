/*
Question A: number of users with more than 5 events last week  by product

*/

SELECT  p.product 
      , COUNT(DISTINCT e.user_id) AS user_count
FROM    facts.fact__events AS e
        JOIN dimensions.dim__products AS p 
          ON e.product_key = p.product_key
WHERE   e.timestamp >= TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 7 DAY)
GROUP BY
        p.product
HAVING COUNT(e.event_id) > 5
;