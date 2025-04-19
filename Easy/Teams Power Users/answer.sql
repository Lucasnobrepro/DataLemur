SELECT 
  sender_id, 
  count(message_id) as message_count
FROM messages
WHERE sent_date BETWEEN DATE '2022-08-01' AND DATE '2022-08-31'
GROUP BY sender_id
ORDER by message_count DESC
LIMIT 2