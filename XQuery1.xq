declare variable $hr := doc("/db/hr/data/hr.xml")/hr;

for $emp in $hr/employees/employee
let $job := $hr/jobs/job[@job_id = $emp/job_id]
return
<salary_report>
    <employee>{data($emp/first_name)} {data($emp/last_name)}</employee>
    <job_title>{data($job/job_title)}</job_title>
    <current_salary>{data($emp/salary)}</current_salary>
    <min_allowed>{data($job/min_salary)}</min_allowed>
    <max_allowed>{data($job/max_salary)}</max_allowed>
</salary_report>