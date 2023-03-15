-- FUNCTION: ahc.calc_age(timestamp without time zone)

-- DROP FUNCTION IF EXISTS ahc.calc_age(timestamp without time zone);

-- select ahc.calc_age('07-09-1988')


CREATE OR REPLACE FUNCTION ahc.calc_age(
	ag timestamp without time zone)
    RETURNS numeric
    LANGUAGE 'plpgsql'
    COST 100
    STABLE PARALLEL UNSAFE
AS $BODY$
 
begin 
 return date_part('year', age(ag))::numeric;
 end ;
 
$BODY$;
