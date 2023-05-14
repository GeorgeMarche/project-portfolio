PROMPT Authors: John Wells <jwells>, George Marche <gmarche>

WITH solo_tchr AS (
	SELECT
	sectionID
	FROM teaches
	GROUP BY sectionID
	HAVING COUNT(*) = 1)
SELECT 
fname,
lname,
COUNT(DISTINCT courseID) AS numcourses,
COUNT(DISTINCT CASE
	WHEN s.sectionID IS NULL
		THEN courseID
	END
) AS numteam,
COUNT(DISTINCT CASE
	WHEN s.sectionID IS NOT NULL
		THEN courseID
	END
) AS numsolo
FROM hc_emp
JOIN teaches t
ON empID = teacherID
JOIN offering o
ON t.sectionID = o.sectionID
LEFT JOIN solo_tchr s
ON o.sectionID = s.sectionID
GROUP BY empID, fname, lname
ORDER BY lname, fname;

PROMPT USED SQL ONLY
