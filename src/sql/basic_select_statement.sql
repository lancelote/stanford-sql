-- Basic SELECT statement
SELECT sID, sName, GPA FROM Student WHERE GPA > 3.6;

-- Combine two relations
SELECT sName, major FROM Student, Apply WHERE Student.sID = Apply.sID;

-- Remove duplicates from combined query
SELECT DISTINCT sName, major FROM Student, Apply WHERE Student.sID = Apply.sID;

-- Query with multiple conditions
SELECT sName, GPA, decision FROM Student, Apply
WHERE Student.sID = Apply.sID AND sizeHS < 1000 AND major = 'CS' AND cName = 'Stanford';

-- Workaround ambiguous column name
SELECT DISTINCT College.cName FROM College, Apply
WHERE College.cName = Apply.cName AND enrollment > 20000 AND major = 'CS';

-- Ordering
SELECT DISTINCT Student.sID, sName, GPA, Apply.cName, enrollment
FROM Student, College, Apply
WHERE Apply.sID = Student.sID AND Apply.cName = College.cName
ORDER BY GPA DESC, enrollment;

-- String matching on attributes values
SELECT DISTINCT sID, major FROM Apply WHERE major LIKE '%bio%';

-- Select every attribute
SELECT DISTINCT * FROM Apply WHERE major LIKE '%bio%';

-- Arithmetic in SELECT
SELECT sID, sName, GPA, sizeHS, GPA*(sizeHS/1000.0)
FROM Student;