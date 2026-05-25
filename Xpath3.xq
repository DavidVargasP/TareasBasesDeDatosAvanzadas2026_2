declare variable $hr := doc("/db/hr/data/hr.xml")/hr;

$hr/employees/employee[department_id = $hr/departments/department[location_id = $hr/locations/location[city='Buenos Aires']/@location_id]/@department_id]