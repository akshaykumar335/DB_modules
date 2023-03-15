-- ahc.ahc_adult_vaccine_sequence definition

-- DROP SEQUENCE ahc.ahc_adult_vaccine_sequence;

CREATE SEQUENCE ahc.ahc_adult_vaccine_sequence
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999
	START 1
	CACHE 20
	NO CYCLE;


-- ahc.ahccommondiseases_seq definition

-- DROP SEQUENCE ahc.ahccommondiseases_seq;

CREATE SEQUENCE ahc.ahccommondiseases_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ahc.ahcfindingid definition

-- DROP SEQUENCE ahc.ahcfindingid;

CREATE SEQUENCE ahc.ahcfindingid
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 281
	CACHE 20
	NO CYCLE;


-- ahc.ahcpatient_seq definition

-- DROP SEQUENCE ahc.ahcpatient_seq;

CREATE SEQUENCE ahc.ahcpatient_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 215885
	CACHE 1
	NO CYCLE;


-- ahc.ahcs_lovdetails_seq definition

-- DROP SEQUENCE ahc.ahcs_lovdetails_seq;

CREATE SEQUENCE ahc.ahcs_lovdetails_seq
	INCREMENT BY 1
	NO MINVALUE
	MAXVALUE 9223372036854775807
	START 4
	CACHE 1
	NO CYCLE;


-- ahc.ahcs_lovmaster_seq definition

-- DROP SEQUENCE ahc.ahcs_lovmaster_seq;

CREATE SEQUENCE ahc.ahcs_lovmaster_seq
	INCREMENT BY 1
	NO MINVALUE
	MAXVALUE 9223372036854775807
	START 2
	CACHE 1
	NO CYCLE;


-- ahc.ahcs_patientdrug_seq definition

-- DROP SEQUENCE ahc.ahcs_patientdrug_seq;

CREATE SEQUENCE ahc.ahcs_patientdrug_seq
	INCREMENT BY 1
	NO MINVALUE
	MAXVALUE 9223372036854775807
	START 197407
	CACHE 1
	NO CYCLE;


-- ahc.ahcs_seq definition

-- DROP SEQUENCE ahc.ahcs_seq;

CREATE SEQUENCE ahc.ahcs_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 21755819
	CACHE 20
	NO CYCLE;


-- ahc.ahcs_seq_hra definition

-- DROP SEQUENCE ahc.ahcs_seq_hra;

CREATE SEQUENCE ahc.ahcs_seq_hra
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 5070
	CACHE 20
	NO CYCLE;


-- ahc.ahcs_seq_hra1 definition

-- DROP SEQUENCE ahc.ahcs_seq_hra1;

CREATE SEQUENCE ahc.ahcs_seq_hra1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 35159
	CACHE 20
	NO CYCLE;


-- ahc.ahcs_seq_hra2 definition

-- DROP SEQUENCE ahc.ahcs_seq_hra2;

CREATE SEQUENCE ahc.ahcs_seq_hra2
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 65872
	CACHE 20
	NO CYCLE;


-- ahc.ahcs_symptom_association_seq definition

-- DROP SEQUENCE ahc.ahcs_symptom_association_seq;

CREATE SEQUENCE ahc.ahcs_symptom_association_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 101
	CACHE 20
	NO CYCLE;


-- ahc.ahctestgroup_seq definition

-- DROP SEQUENCE ahc.ahctestgroup_seq;

CREATE SEQUENCE ahc.ahctestgroup_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ahc.audit_seq definition

-- DROP SEQUENCE ahc.audit_seq;

CREATE SEQUENCE ahc.audit_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 3614381
	CACHE 1
	NO CYCLE;


-- ahc.audittable_seq definition

-- DROP SEQUENCE ahc.audittable_seq;

CREATE SEQUENCE ahc.audittable_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ahc.conditionalbranching_seq definition

-- DROP SEQUENCE ahc.conditionalbranching_seq;

CREATE SEQUENCE ahc.conditionalbranching_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 20
	NO CYCLE;


-- ahc.consultationmaster_seq definition

-- DROP SEQUENCE ahc.consultationmaster_seq;

CREATE SEQUENCE ahc.consultationmaster_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ahc.consultationtypemaster_seq definition

-- DROP SEQUENCE ahc.consultationtypemaster_seq;

CREATE SEQUENCE ahc.consultationtypemaster_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ahc.corporatemaster_seq definition

-- DROP SEQUENCE ahc.corporatemaster_seq;

CREATE SEQUENCE ahc.corporatemaster_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ahc.counsellingdetails_seq definition

-- DROP SEQUENCE ahc.counsellingdetails_seq;

CREATE SEQUENCE ahc.counsellingdetails_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 215885
	CACHE 1
	NO CYCLE;


-- ahc.counsellormaster_seq definition

-- DROP SEQUENCE ahc.counsellormaster_seq;

CREATE SEQUENCE ahc.counsellormaster_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ahc.countermaster_seq definition

-- DROP SEQUENCE ahc.countermaster_seq;

CREATE SEQUENCE ahc.countermaster_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 5088
	CACHE 20
	NO CYCLE;


-- ahc.counterstatusmaster_seq definition

-- DROP SEQUENCE ahc.counterstatusmaster_seq;

CREATE SEQUENCE ahc.counterstatusmaster_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ahc.datewisenogenerate_seq definition

-- DROP SEQUENCE ahc.datewisenogenerate_seq;

CREATE SEQUENCE ahc.datewisenogenerate_seq
	INCREMENT BY 1
	NO MINVALUE
	MAXVALUE 9223372036854775807
	START 146
	CACHE 1
	NO CYCLE;


-- ahc.departmentlocation_seq definition

-- DROP SEQUENCE ahc.departmentlocation_seq;

CREATE SEQUENCE ahc.departmentlocation_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ahc.departmentmaster_seq definition

-- DROP SEQUENCE ahc.departmentmaster_seq;

CREATE SEQUENCE ahc.departmentmaster_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ahc.diseasequicklist_seq definition

-- DROP SEQUENCE ahc.diseasequicklist_seq;

CREATE SEQUENCE ahc.diseasequicklist_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ahc.drugallergy_seq definition

-- DROP SEQUENCE ahc.drugallergy_seq;

CREATE SEQUENCE ahc.drugallergy_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 252
	CACHE 2
	NO CYCLE;


-- ahc.employee_seq definition

-- DROP SEQUENCE ahc.employee_seq;

CREATE SEQUENCE ahc.employee_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ahc.favouritemaster_seq definition

-- DROP SEQUENCE ahc.favouritemaster_seq;

CREATE SEQUENCE ahc.favouritemaster_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ahc.fileprocessmaster_seq definition

-- DROP SEQUENCE ahc.fileprocessmaster_seq;

CREATE SEQUENCE ahc.fileprocessmaster_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ahc.fitness_seq definition

-- DROP SEQUENCE ahc.fitness_seq;

CREATE SEQUENCE ahc.fitness_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 9
	CACHE 1
	NO CYCLE;


-- ahc.investigationtypemaster_seq definition

-- DROP SEQUENCE ahc.investigationtypemaster_seq;

CREATE SEQUENCE ahc.investigationtypemaster_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ahc.locationmaster_seq definition

-- DROP SEQUENCE ahc.locationmaster_seq;

CREATE SEQUENCE ahc.locationmaster_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ahc.logincountermapping_seq definition

-- DROP SEQUENCE ahc.logincountermapping_seq;

CREATE SEQUENCE ahc.logincountermapping_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1415353
	CACHE 20
	NO CYCLE;


-- ahc.machinemaster_seq definition

-- DROP SEQUENCE ahc.machinemaster_seq;

CREATE SEQUENCE ahc.machinemaster_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 61
	CACHE 20
	NO CYCLE;


-- ahc.packagecategory_seq definition

-- DROP SEQUENCE ahc.packagecategory_seq;

CREATE SEQUENCE ahc.packagecategory_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ahc.packagemaster_seq definition

-- DROP SEQUENCE ahc.packagemaster_seq;

CREATE SEQUENCE ahc.packagemaster_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ahc.packagestatusmaster_seq definition

-- DROP SEQUENCE ahc.packagestatusmaster_seq;

CREATE SEQUENCE ahc.packagestatusmaster_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ahc.packagevisits_seq definition

-- DROP SEQUENCE ahc.packagevisits_seq;

CREATE SEQUENCE ahc.packagevisits_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ahc.patientqueuestatusmaster_seq definition

-- DROP SEQUENCE ahc.patientqueuestatusmaster_seq;

CREATE SEQUENCE ahc.patientqueuestatusmaster_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ahc.profilemaster_seq definition

-- DROP SEQUENCE ahc.profilemaster_seq;

CREATE SEQUENCE ahc.profilemaster_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ahc.profiletest_seq definition

-- DROP SEQUENCE ahc.profiletest_seq;

CREATE SEQUENCE ahc.profiletest_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ahc.queue_messages_1977058079_seq definition

-- DROP SEQUENCE ahc.queue_messages_1977058079_seq;

CREATE SEQUENCE ahc.queue_messages_1977058079_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 20
	NO CYCLE;


-- ahc.queue_messages_2009058193_seq definition

-- DROP SEQUENCE ahc.queue_messages_2009058193_seq;

CREATE SEQUENCE ahc.queue_messages_2009058193_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 20
	NO CYCLE;


-- ahc.queue_messages_2041058307_seq definition

-- DROP SEQUENCE ahc.queue_messages_2041058307_seq;

CREATE SEQUENCE ahc.queue_messages_2041058307_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 20
	NO CYCLE;


-- ahc.replaceablservices_seq definition

-- DROP SEQUENCE ahc.replaceablservices_seq;

CREATE SEQUENCE ahc.replaceablservices_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ahc.requesttype_seq definition

-- DROP SEQUENCE ahc.requesttype_seq;

CREATE SEQUENCE ahc.requesttype_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ahc.rulesenginerequest_seq definition

-- DROP SEQUENCE ahc.rulesenginerequest_seq;

CREATE SEQUENCE ahc.rulesenginerequest_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ahc.s_ahcs_hra definition

-- DROP SEQUENCE ahc.s_ahcs_hra;

CREATE SEQUENCE ahc.s_ahcs_hra
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 6727
	CACHE 20
	NO CYCLE;


-- ahc.s_favouriteid definition

-- DROP SEQUENCE ahc.s_favouriteid;

CREATE SEQUENCE ahc.s_favouriteid
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 179
	CACHE 1
	NO CYCLE;


-- ahc.s_machinevisitcounter definition

-- DROP SEQUENCE ahc.s_machinevisitcounter;

CREATE SEQUENCE ahc.s_machinevisitcounter
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 24
	CACHE 1
	NO CYCLE;


-- ahc.s_wards_table_stats definition

-- DROP SEQUENCE ahc.s_wards_table_stats;

CREATE SEQUENCE ahc.s_wards_table_stats
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ahc.status_seq definition

-- DROP SEQUENCE ahc.status_seq;

CREATE SEQUENCE ahc.status_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ahc.sysdiagrams_seq definition

-- DROP SEQUENCE ahc.sysdiagrams_seq;

CREATE SEQUENCE ahc.sysdiagrams_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ahc.testmaster_seq definition

-- DROP SEQUENCE ahc.testmaster_seq;

CREATE SEQUENCE ahc.testmaster_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ahc.visit_seq definition

-- DROP SEQUENCE ahc.visit_seq;

CREATE SEQUENCE ahc.visit_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999999
	START 1141
	CACHE 20
	NO CYCLE;


-- ahc.visitmaster_seq definition

-- DROP SEQUENCE ahc.visitmaster_seq;

CREATE SEQUENCE ahc.visitmaster_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 5053
	CACHE 20
	NO CYCLE;


-- ahc.workflowprocessmaster_seq definition

-- DROP SEQUENCE ahc.workflowprocessmaster_seq;

CREATE SEQUENCE ahc.workflowprocessmaster_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 20
	NO CYCLE;


-- ahc.workflowtransaction_seq definition

-- DROP SEQUENCE ahc.workflowtransaction_seq;

CREATE SEQUENCE ahc.workflowtransaction_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 30
	CACHE 1
	NO CYCLE;