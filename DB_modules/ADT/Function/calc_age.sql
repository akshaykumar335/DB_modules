-- FUNCTION: adt.calc_age(timestamp without time zone)

-- DROP FUNCTION IF EXISTS adt.calc_age(timestamp without time zone);

CREATE OR REPLACE FUNCTION adt.calc_age(
	ag timestamp without time zone)
    RETURNS numeric
    LANGUAGE 'plpgsql'
    COST 100
    STABLE PARALLEL UNSAFE
AS $BODY$

begin
--set search_path to adt ;
raise notice 'start';

return 

--round( ( clock_timestamp(  )- ag )/365 ) ;
round( ((((to_date(to_char(clock_timestamp(  ),'yyyy-mm-dd'),'yyyy-mm-dd'))- 
(to_date(to_char(ag ,'yyyy-mm-dd'),'yyyy-mm-dd'))))/365 ) );
	
end ;

$BODY$;

ALTER FUNCTION adt.calc_age(timestamp without time zone)
    OWNER TO "ApolloMumRGNL";
