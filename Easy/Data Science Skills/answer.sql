SELECT candidate_id FROM candidates 
WHERE skill in ('Python','Tableau','PostgreSQL')
GROUP by candidate_id
HAVING COUNT(DISTINCT skill) = 3
ORDER by candidate_id ASC;

git config user.name "Lucas Nobre"