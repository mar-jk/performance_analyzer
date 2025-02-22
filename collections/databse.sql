WHERE name in (SELECT DISTINCT name 
               FROM population 
               WHERE country = "Canada"
                     AND city = "Toronto")
      AND salary >= (SELECT AVG(salary)
                     FROM salaries
                     WHERE gender = "Female")
