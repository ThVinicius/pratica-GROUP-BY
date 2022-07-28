Questão 1:
  SELECT 
      COUNT("endDate") AS "currentExperiences" 
    FROM experiences;

Questão 2:
  SELECT 
	    "userId" AS id, COUNT("courseId") AS educations
	  FROM educations
	  GROUP BY "userId";

Questão 3:
  SELECT 
    name AS writer, COUNT("message") AS testimonailCount
    FROM testimonials t
    JOIN users u ON u.id = t."writerId"
    WHERE t."writerId" = 435
    GROUP BY name;

Questão 4:
  SELECT 
    MAX(salary) AS "maximumSalary", name AS role
    FROM jobs j
    JOIN roles r ON j."roleId" = r.id
	  WHERE active = true
    GROUP BY name
    ORDER BY "maximumSalary";

Questão Bonus:
  SELECT
      s.name AS school, c.name AS course, 
      COUNT("userId") AS studentsCount, e.status AS role
    FROM educations e
    JOIN courses c ON c.id = e."courseId"
    JOIN schools s ON s.id = e."schoolId"
    WHERE e.status = 'ongoing' OR e.status = 'finished'
    GROUP BY school, course, role
    ORDER BY studentsCount DESC
    LIMIT 3;