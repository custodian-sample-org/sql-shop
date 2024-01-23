CREATE PROCEDURE remove_emp (employee_id NUMBER) AS
  tot_emps NUMBER;
   BEGIN
      DELETE FROM employees
      WHERE employees.employee_id = remove_emp.employee_id;
   tot_emps := tot_emps - 1;
   END;


-- Check that 'remove_emp' has been translated into valid plpgsql
SELECT has_function('remove_emp');
SELECT is_procedure('remove_emp');
SELECT function_lang_is('remove_emp', 'pgplsql' );
