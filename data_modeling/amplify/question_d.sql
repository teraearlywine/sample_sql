/*
Question D: no. overall events by user last month segmented by verbs and objects
*/

SELECT  e.user_id
      , e.verb AS verb_event
      , e.object
      , COUNT(e.id) AS event_count
FROM    facts.fact__events AS e
WHERE   e.event_ts 
        BETWEEN TIMESTAMP_TRUNC(TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 1 MONTH), MONTH) 
        AND TIMESTAMP_TRUNC(CURRENT_TIMESTAMP(), MONTH)
GROUP BY 
      e.user_id
    , verb_event
    , e.object