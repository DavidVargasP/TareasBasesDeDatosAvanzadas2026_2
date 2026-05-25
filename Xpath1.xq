declare variable $hr := doc("/db/hr/data/hr.xml")/hr;

$hr/countries/country[region_id = $hr/regions/region[region_name='América del Sur']/@region_id]