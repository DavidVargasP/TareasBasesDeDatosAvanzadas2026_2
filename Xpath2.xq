declare variable $hr := doc("/db/hr/data/hr.xml")/hr;

$hr/departments/department[location_id = $hr/locations/location[country_id='MX']/@location_id]
