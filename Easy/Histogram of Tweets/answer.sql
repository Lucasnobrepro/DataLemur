WITH tweets_per_year AS(

  SELECT user_id, count(msg) AS tweet_bucket
  FROM tweets
  WHERE DATE_PART('year', tweet_date) = 2022
  GROUP BY user_id
)

SELECT tweet_bucket, count(user_id) FROM tweets_per_year
GROUP BY tweet_bucket