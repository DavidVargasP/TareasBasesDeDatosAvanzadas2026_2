declare variable $hr := doc("/db/hr/data/hr.xml")/hr;

$hr/jobs/job[@job_id = $hr/employees/employee[@employee_id='502']/job_id]
