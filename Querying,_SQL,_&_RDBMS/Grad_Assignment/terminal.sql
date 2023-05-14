PROMPT Authors: George Marche <gmarche>, John Wells <jwells>

WITH grades AS(
	SELECT
	empID AS eID,
	courseID AS cID,
	grade
	FROM takes_section t
	JOIN offering o
	ON t.sectionID = o.sectionID)
SELECT
fname,
lname,
empID,
courseID,
name
FROM hc_emp 
CROSS JOIN course
LEFT JOIN prereq p1
ON courseID = p1.is_prereq
INNER JOIN prereq p2
ON courseID = p2.has_prereq
LEFT JOIN grades g1
ON courseID = g1.cID 
AND empID = g1.eID
LEFT JOIN grades g2
ON p2.is_prereq = g2.cID
AND empID = g2.eID
WHERE p1.has_prereq IS NULL
AND (g1.grade IS NULL 
	OR g1.grade = 'F')
HAVING COUNT(
	CASE
		WHEN g2.grade = 'P'
			THEN 1
		END
	) = COUNT(DISTINCT p2.is_prereq)
GROUP BY fname, lname, empID, courseID, name
ORDER BY lname, fname;

PROMPT USED SQL ONLY
