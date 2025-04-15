SELECT COUNT(*) FILTER( WHERE device_type = 'laptop') as laptop_views,
       COUNT(*) FILTER( WHERE device_type in ('phone', 'tablet')) as laptop_views
FROM viewership
