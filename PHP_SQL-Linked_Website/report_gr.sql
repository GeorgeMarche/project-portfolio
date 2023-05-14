
CREATE OR REPLACE PROCEDURE report_gr AS
	-- Paramters to insert
	v_dname		department.dname%TYPE;
	v_dnumber	department.dnumber%TYPE;
	v_emp_type	VARCHAR2(16);
	v_proj_type	VARCHAR2(16);
	v_num_emps	NUMBER(3);
	v_hours		NUMBER(5);
	v_cost		NUMBER(8,2);
	v_insert_number	NUMBER(4);
	
	hours		NUMBER(5,2);
	relevant	BOOLEAN;
		
	-- Arrays with emp_type and proj_type
	TYPE types IS VARRAY(5) OF VARCHAR2(16);
	emp_types types;
	proj_types types;

	CURSOR dept IS
		SELECT dname, dnumber
		FROM department
		ORDER BY dnumber;
	
	CURSOR main IS
		SELECT ssn, dno, hours, dnum,
		salary / 2000 * hours AS cost
		FROM employee
		LEFT JOIN works_on
		ON ssn = essn
		LEFT JOIN project
		ON pno = pnumber;	

BEGIN
	emp_types := types(
		'NOMINAL',
	       	'DEPT',
	       	'DEPT',
	       	'NONDEPT',
	       	'ASSIGNED'
	);

	proj_types := types(
		'NA',
		'DEPT',
	      	'NONDEPT',
		'DEPT',
	       	'DEPT'
	);

	v_insert_number := 0;
	
	FOR d IN dept LOOP
		v_dname := d.dname;
		v_dnumber := d.dnumber;
		FOR i in 1..5 LOOP
			v_insert_number := v_insert_number + 1;
			v_emp_type := emp_types(i);
			v_proj_type := proj_types(i);
			v_num_emps := 0;
			hours := 0;
			v_cost := 0;

			FOR m in main LOOP
				relevant := FALSE;
				CASE i
					WHEN 1 THEN
						IF m.dno = v_dnumber THEN
							relevant := TRUE;
						END IF;
					WHEN 2 THEN
						IF m.dno = v_dnumber AND
							m.dnum = v_dnumber THEN
							relevant := TRUE;
						END IF;
					WHEN 3 THEN
						IF m.dno = v_dnumber AND
							m.dnum <> v_dnumber AND
						        m.dnum > 0 THEN
							relevant := TRUE;
						END IF;
					WHEN 4 THEN
						IF m.dno <> v_dnumber AND
							m.dnum = v_dnumber THEN
							relevant := TRUE;
						END IF;
					WHEN 5 THEN
						IF m.dnum = v_dnumber THEN
							relevant := TRUE;
						END IF;
				END CASE;

				IF relevant = TRUE THEN
					v_num_emps := v_num_emps + 1;
					IF m.hours > 0 THEN
						hours := hours + m.hours;
						v_cost := v_cost + m.cost;
					END IF;
				END IF;
			END LOOP;

			v_hours := hours;
			cs450.ins_dept_summary(
				v_dname,
				v_dnumber,
				v_emp_type,
				v_proj_type,
				v_num_emps,
				v_hours,
				v_cost,
				'GMARCHE',
				v_insert_number);
		END LOOP;
	END LOOP;
END report_gr;
/
