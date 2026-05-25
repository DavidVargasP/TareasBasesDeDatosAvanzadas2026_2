declare variable $hr := doc("/db/hr/data/hr.xml")/hr;

for $emp in $hr/employees/employee
let $mgr := $hr/employees/employee[@employee_id = $emp/manager_id]
return
<employee_manager>
    <employee>{data($emp/first_name)} {data($emp/last_name)}</employee>
    <manager>{data($mgr/first_name)} {data($mgr/last_name)}</manager>
</employee_manager>