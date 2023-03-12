
New York Restaurants
We have put together a table of restaurants called nomnom and we need your help to answer some questions. Use the SQL commands you just learned and find the best dinner spots in the city.

The schema of this table is available here.

Let’s begin!
1-
Start by getting a feel for the nomnom table:
What are the column names?

SELECT *
FROM nomnom;

2-
What are the distinct neighborhoods?

SELECT DISTINCT neighborhood
FROM nomnom;

3-
Suppose we would like some Chinese takeout.
What are our options?

SELECT *
FROM nomnom
WHERE cuisine = 'Chinese';

4-
Return all the restaurants with reviews of 4 and above.

SELECT *
FROM nomnom
WHERE reviews >= 4;

5-
Create a Top 10 Restaurants Ranking based on reviews.

SELECT * 
FROM nomnom
ORDER BY review DESC
LIMIT 10;

7-
Your coworker Trey can’t remember the exact name of a restaurant he went to but he knows it contains the word ‘meatball’ in it.

Can you find it for him using a query?
SELECT *
FROM nomnom
WHERE name LIKE '%meatball%';

8-  
Use a CASE statement to change the rating system to:

review > 4.5 is Extraordinary
review > 4 is Excellent
review > 3 is Good
review > 2 is Fair
Everything else is Poor
Don’t forget to rename the new column!


SELECT name,
  CASE 
    WHEN review > 4.5 THEN 'Extraordinary'
    WHEN review > 4 THEN  'Excellent'
    WHEN review > 3 THEN 'Good'
    WHEN review > 2 THEN 'Fair'
    ELSE 'Poor'
  END AS 'Review'
FROM nomnom;

