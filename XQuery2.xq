declare variable $hr := doc("/db/hr/data/hr.xml")/hr;

for $emp in $hr/employees/employee
let $dept := $hr/departments/department[@department_id = $emp/department_id]
let $loc := $hr/locations/location[@location_id = $dept/location_id]
let $country := $hr/countries/country[@country_id = $loc/country_id]
return
<employee_country>
    <name>{data($emp/first_name)} {data($emp/last_name)}</name>
    <country>{data($country/country_name)}</country>
</employee_country>