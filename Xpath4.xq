declare variable $hr := doc("/db/hr/data/hr.xml")/hr;
$hr/employees/employee[xs:decimal(salary) > xs:decimal($hr/jobs/job[job_title='Programador']/min_salary)]