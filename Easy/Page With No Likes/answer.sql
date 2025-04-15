SELECT page_id
FROM pages as pg
EXCEPT
SELECT page_id from page_likes