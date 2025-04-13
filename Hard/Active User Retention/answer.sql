WITH possible_active_users AS(
  SELECT user_id
  FROM user_actions
  WHERE event_type in ('sign-in	', 'like', 'comment')
        AND EXTRACT(MONTH from event_date) in (6,7)
  GROUP by user_id
  HAVING COUNT(DISTINCT EXTRACT(MONTH FROM event_date)) = 2
)


SELECT 7 AS month, COUNT(user_id) as monthly_active_users
FROM possible_active_users