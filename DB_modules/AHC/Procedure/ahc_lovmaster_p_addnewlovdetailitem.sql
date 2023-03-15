-- CALL  ahc.ahc_lovmaster_p_addnewlovdetailitem(2, 'test', '921186'); 


create or replace
procedure ahc.ahc_lovmaster_p_addnewlovdetailitem(in in_lovid numeric,
in in_lovlist character varying,
in in_loginid character varying)
 language plpgsql
as $procedure$ declare 

begin 

insert
	into
	ahc.ahcs_lovdetails( lovid,
	lovdetailid,
	lovdetailvalue,
	status,
	createdby,
	createddate )
values( in_lovid,
nextval('ahc.ahcs_lovdetails_seq'),
in_lovlist,
1,
in_loginid,
clock_timestamp()) ;
end ;

$procedure$
;
