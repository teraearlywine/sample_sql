/*
Question C: no. selected verb events by product by month 
*/

SELECT  p.product_name
      , e.verb AS verb_event
      , EXTRACT(MONTH FROM e.event_ts) AS event_month
      , COUNT(e.event_id) AS event_count
FROM    facts.fact__events AS e
        JOIN dimensions.dim__products AS p 
          ON e.product_key = p.product_key
WHERE e.verb = 'selected'
GROUP BY 
      p.product_name
    , verb_event 
    , event_month
;