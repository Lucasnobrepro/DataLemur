WITH user_3th AS (
  SELECT user_id
  FROM transactions
  GROUP BY user_id
  HAVING COUNT(DISTINCT transaction_date) = 3
),

latest_transaction AS (
  SELECT user_id, MAX(transaction_date) AS max_date
  FROM transactions
  GROUP BY user_id
)

SELECT t.user_id, t.spend, t.transaction_date
FROM transactions t
JOIN user_3th u ON t.user_id = u.user_id
JOIN latest_transaction l ON t.user_id = l.user_id AND t.transaction_date = l.max_date;
