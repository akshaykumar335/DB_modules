-- adt.admissionnote definition

-- Drop table

-- DROP TABLE adt.admissionnote;

CREATE TABLE adt.admissionnote (
	admissionnoteid numeric(19) NULL,
	bookid numeric(19) NULL,
	inpatientid numeric(19) NULL,
	categoryid numeric(10) NULL,
	admittingdoctorname numeric(10) NULL,
	referringdoctorname numeric(10) NULL,
	referraltypeid numeric(10) NULL,
	reasonforadmission numeric(10) NULL,
	dateofadmission timestamp NULL,
	admittingdepartment numeric(10) NULL,
	filename varchar(200) NULL,
	filetype varchar(100) NULL,
	updatedby varchar(100) NULL,
	updateddate timestamp NULL,
	referringdoctoraddress varchar(2000) NULL,
	provisionaldiagnosis varchar(2000) NULL,
	filepath varchar(2000) NULL,
	mlcase numeric(5) NULL,
	mlcasenumber varchar(50) NULL,
	infectious numeric(5) NULL
);


-- adt.admissiontypemaster definition

-- Drop table

-- DROP TABLE adt.admissiontypemaster;

CREATE TABLE adt.admissiontypemaster (
	admissiontypeid numeric(19) NULL,
	admissiontypename varchar(100) NULL,
	admissiontypecode varchar(100) NULL,
	status numeric(10) NULL,
	updatedby varchar(100) NULL,
	updateddate timestamp NULL
);


-- adt.adt_dummy definition

-- Drop table

-- DROP TABLE adt.adt_dummy;

CREATE TABLE adt.adt_dummy (
	"input" text NULL
);


-- adt.agreements definition

-- Drop table

-- DROP TABLE adt.agreements;

CREATE TABLE adt.agreements (
	agreementid numeric NULL,
	agreementcode varchar(200) NULL,
	agreementname varchar(200) NULL,
	customerid numeric NULL,
	statusid numeric NULL,
	effectivedate timestamp NULL,
	expirydate timestamp NULL,
	updatingtariffrules numeric NULL,
	description varchar(2000) NULL,
	assignedowner xml NULL,
	primaryassignedowner varchar(200) NULL,
	createdby varchar(200) NULL,
	createddate timestamp NULL,
	updatedby varchar(200) NULL,
	updateddate timestamp NULL,
	quoteid numeric NULL,
	signingdate timestamp NULL,
	filetype varchar(200) NULL,
	filename varchar(200) NULL,
	filepath varchar(1000) NULL,
	customercategoryid numeric NULL,
	customertypeid numeric NULL,
	agreementpricingdetails numeric NULL,
	customerpaymentdetails numeric NULL,
	customername varchar(200) NULL,
	locationid numeric NULL,
	applicablelocations text NULL,
	eligibilitycheck numeric NULL,
	prospectivereview numeric NULL,
	dischargemanagement numeric NULL,
	concurentreview numeric NULL,
	identifiers text NULL,
	timeperiod numeric NULL,
	applicability text NULL,
	remarks varchar(1000) NULL,
	basebedcategoryid numeric NULL
);


-- adt.attendantdetails definition

-- Drop table

-- DROP TABLE adt.attendantdetails;

CREATE TABLE adt.attendantdetails (
	attendentid numeric(20) NULL,
	inaptientid numeric(20) NULL,
	attendentname varchar(100) NULL,
	phoneno varchar(100) NULL,
	emailid varchar(100) NULL,
	relationshipwithpatient numeric(10) NULL,
	attendentaddress varchar(1998) NULL,
	communicatedwardnurse varchar(100) NULL,
	communicatedhousekeeping varchar(100) NULL,
	status numeric(10) NULL
);


-- adt.audit1 definition

-- Drop table

-- DROP TABLE adt.audit1;

CREATE TABLE adt.audit1 (
	auditid numeric(10) NULL,
	eventid numeric(10) NULL,
	eventdate timestamp NULL,
	auditlevelid numeric(10) NULL,
	severityid numeric(10) NULL,
	facilityid numeric(10) NULL,
	optionaleventdata varchar(2000) NULL,
	userid varchar(100) NULL,
	requestid uuid NULL,
	requesttypeid numeric(10) NULL
);


-- adt.auditadimissionedit definition

-- Drop table

-- DROP TABLE adt.auditadimissionedit;

CREATE TABLE adt.auditadimissionedit (
	inpatientid numeric(19) NULL,
	inpatientno varchar(100) NULL,
	bookid numeric(19) NULL,
	uhid varchar(100) NULL,
	prn varchar(100) NULL,
	ern varchar(100) NULL,
	firstname varchar(600) NULL,
	middlename varchar(100) NULL,
	lastname varchar(100) NULL,
	dateofbirth timestamp NULL,
	age numeric(10) NULL,
	dip numeric(10) NULL,
	maritalstatus varchar(100) NULL,
	admissionnoteavailable numeric(10) NULL,
	admissionnotetype varchar(100) NULL,
	patienttype numeric(10) NULL,
	authorizationrequired numeric(10) NULL,
	reasonforadmission varchar(600) NULL,
	requestedbedtype numeric(10) NULL,
	dateofadmission timestamp NULL,
	expecteddurationtostay numeric(10) NULL,
	bedid numeric(10) NULL,
	advancepaymentneeded numeric(10) NULL,
	street varchar(100) NULL,
	locality varchar(100) NULL,
	district varchar(100) NULL,
	state varchar(100) NULL,
	country varchar(100) NULL,
	patientcontactno varchar(200) NULL,
	admissiontype varchar(100) NULL,
	paymentmode varchar(50) NULL,
	allergies text NULL,
	policyno text NULL,
	empno varchar(100) NULL,
	corporatecode varchar(100) NULL,
	habits text NULL,
	diabetic numeric(10) NULL,
	eligibletariffcategoryid numeric(10) NULL,
	requestedbedcategoryid numeric(10) NULL,
	allottedbedcategoryid numeric(10) NULL,
	referreddoctor numeric(10) NULL,
	attendantname varchar(100) NULL,
	contactno varchar(100) NULL,
	relationshipwithpatient numeric(10) NULL,
	email varchar(100) NULL,
	passportno varchar(100) NULL,
	issueplace varchar(100) NULL,
	issuedate timestamp NULL,
	expirydate timestamp NULL,
	needassistant numeric(10) NULL,
	needequipment numeric(10) NULL,
	equipment numeric(10) NULL,
	needescort numeric(10) NULL,
	escort varchar(100) NULL,
	needtransportation numeric(10) NULL,
	transportation varchar(100) NULL,
	doubleoccupancy numeric(10) NULL,
	needfordoubleoccupancy numeric(10) NULL,
	admissiondeposit varchar(100) NULL,
	needreligiouspriest numeric(10) NULL,
	nameofthepriest varchar(100) NULL,
	address varchar(100) NULL,
	priestno varchar(100) NULL,
	admittingdoctor numeric(10) NULL,
	primaryphysician varchar(100) NULL,
	needinterpreter numeric(10) NULL,
	"language" numeric(10) NULL,
	clinicaltrialpatient numeric(10) NULL,
	clinicaltrialcode numeric(10) NULL,
	modificationdate timestamp NULL,
	reasonformodification varchar(200) NULL,
	cancellationdate timestamp NULL,
	reasonforcancellation varchar(200) NULL,
	mlcase numeric(10) NULL,
	requestedperson varchar(100) NULL,
	addressofrequester varchar(100) NULL,
	requestercontactnumber varchar(100) NULL,
	authorizingdoctor varchar(100) NULL,
	startdate timestamp NULL,
	enddate timestamp NULL,
	status numeric(10) NULL,
	updateddate timestamp NULL,
	updatedby varchar(100) NULL,
	foodandbeveragespreference varchar(1000) NULL,
	generalpreference varchar(1000) NULL,
	housekeepingpreference varchar(1000) NULL,
	doctorsaddress varchar(1000) NULL,
	attendantaddress varchar(1000) NULL,
	remarks varchar(1000) NULL,
	locationid numeric(10) NULL,
	convertedfrom varchar(100) NULL,
	counterno varchar(100) NULL,
	shiftno varchar(100) NULL,
	ipguide numeric NULL,
	patientvenerable numeric NULL,
	typeoftransport numeric NULL,
	referaltype numeric NULL,
	doctortype varchar(100) NULL,
	referalentity numeric NULL,
	activestatus numeric NULL,
	admissionno numeric NULL,
	dischargedate timestamp NULL,
	ambulancerequestid numeric NULL,
	services text NULL,
	locationtransfer numeric NULL,
	oldlocation varchar(100) NULL,
	oldipno varchar(100) NULL,
	billingtype numeric NULL,
	settlementdone numeric NULL,
	agreementid numeric NULL,
	daycare numeric NULL,
	filepath varchar(200) NULL,
	filename varchar(200) NULL,
	docfilename varchar(200) NULL,
	dischargemedication numeric NULL,
	reason varchar(600) NULL,
	cautioncheck varchar(10) NULL,
	specialnotes varchar(800) NULL,
	consultantchange varchar(2000) NULL,
	upselling varchar(10) NULL,
	upgradation varchar(10) NULL,
	dbremarks varchar(500) NULL,
	trackdate timestamp NULL
);


-- adt.auditlevel definition

-- Drop table

-- DROP TABLE adt.auditlevel;

CREATE TABLE adt.auditlevel (
	auditlevelid numeric(10) NULL,
	auditleveldescription varchar(100) NULL
);


-- adt.auditrequesttype definition

-- Drop table

-- DROP TABLE adt.auditrequesttype;

CREATE TABLE adt.auditrequesttype (
	requesttypeid numeric(10) NULL,
	requesttypename varchar(100) NULL,
	description varchar(510) NULL
);


-- adt.audittable definition

-- Drop table

-- DROP TABLE adt.audittable;

CREATE TABLE adt.audittable (
	auditid numeric(19) NULL,
	oldxmldata text NULL,
	tablename varchar(500) NULL,
	spname varchar(500) NULL,
	loginid varchar(100) NULL,
	createddate timestamp NULL
);


-- adt.auditupdatepatientstatus definition

-- Drop table

-- DROP TABLE adt.auditupdatepatientstatus;

CREATE TABLE adt.auditupdatepatientstatus (
	ipno varchar(30) NULL,
	status varchar(30) NULL,
	dm varchar(10) NULL,
	updateddate timestamp NULL,
	loginid varchar(100) NULL
);


-- adt.auditupdatepatientstatus1 definition

-- Drop table

-- DROP TABLE adt.auditupdatepatientstatus1;

CREATE TABLE adt.auditupdatepatientstatus1 (
	ipno varchar(30) NULL,
	status varchar(30) NULL,
	dm varchar(10) NULL,
	updateddate timestamp NULL,
	loginid varchar(100) NULL
);


-- adt.bedadmission definition

-- Drop table

-- DROP TABLE adt.bedadmission;

CREATE TABLE adt.bedadmission (
	bedtransactionid numeric(10) NULL,
	inpatientid numeric(19) NULL,
	bedid numeric(10) NULL,
	startdate timestamp NULL,
	enddate timestamp NULL,
	status numeric(10) NULL,
	currentlyoccupied numeric(10) NULL,
	requestedbedcategoryid numeric(10) NULL,
	allottedbedcategoryid numeric(10) NULL,
	billabletariffcategoryid numeric(10) NULL,
	updateddate timestamp NULL,
	updatedby varchar(100) NULL,
	dbremarks varchar(500) NULL
);


-- adt.bedadmission_tmp definition

-- Drop table

-- DROP TABLE adt.bedadmission_tmp;

CREATE TABLE adt.bedadmission_tmp (
	bedtransactionid numeric(10) NULL,
	inpatientid numeric(19) NULL,
	bedid numeric(10) NULL,
	startdate timestamp NULL,
	enddate timestamp NULL,
	status numeric(10) NULL,
	currentlyoccupied numeric(10) NULL,
	requestedbedcategoryid numeric(10) NULL,
	allottedbedcategoryid numeric(10) NULL,
	billabletariffcategoryid numeric(10) NULL,
	updateddate timestamp NULL,
	updatedby varchar(100) NULL
);


-- adt.bedcategorydetail definition

-- Drop table

-- DROP TABLE adt.bedcategorydetail;

CREATE TABLE adt.bedcategorydetail (
	categoryid numeric(10) NULL,
	bookdate timestamp NULL,
	maxbed numeric(10) NULL,
	allowedbooking numeric(10) NULL,
	availablebooking numeric(10) NULL,
	waitingbooking numeric(10) NULL,
	updateddate timestamp NULL,
	updatedby varchar(100) NULL,
	locationid numeric(10) NULL
);


-- adt.bedcategorymaster definition

-- Drop table

-- DROP TABLE adt.bedcategorymaster;

CREATE TABLE adt.bedcategorymaster (
	categoryid numeric(10) NULL,
	categorycode varchar(100) NULL,
	categoryname varchar(100) NULL,
	"rank" numeric(10) NULL,
	updateddate timestamp NULL,
	updatedby varchar(100) NULL,
	status numeric(10) NULL,
	categorydescription varchar(100) NULL,
	locationid numeric(10) NULL,
	billabletariff numeric(10) NULL DEFAULT 1,
	icutariff numeric(10) NULL DEFAULT 0,
	overrule numeric NULL DEFAULT 0,
	roomrentbased varchar(10) NULL DEFAULT 'D'::character varying,
	intl_bedcategory numeric(10) NULL,
	intl_bedsubcategory numeric(10) NULL
);


-- adt.bedcategorymaster_bkp_use definition

-- Drop table

-- DROP TABLE adt.bedcategorymaster_bkp_use;

CREATE TABLE adt.bedcategorymaster_bkp_use (
	categoryid numeric(10) NULL,
	categorycode varchar(100) NULL,
	categoryname varchar(100) NULL,
	"rank" numeric(10) NULL,
	updateddate timestamp NULL,
	updatedby varchar(100) NULL,
	status numeric(10) NULL,
	categorydescription varchar(100) NULL,
	locationid numeric(10) NULL,
	billabletariff numeric(10) NULL,
	icutariff numeric(10) NULL
);


-- adt.bedcategorymaster_log definition

-- Drop table

-- DROP TABLE adt.bedcategorymaster_log;

CREATE TABLE adt.bedcategorymaster_log (
	categoryid numeric(10) NULL,
	locationid numeric(10) NULL,
	updateddate timestamp NULL,
	updatedby varchar(100) NULL,
	overrule numeric NULL
);


-- adt.bedcategoryrequest definition

-- Drop table

-- DROP TABLE adt.bedcategoryrequest;

CREATE TABLE adt.bedcategoryrequest (
	inpatientid numeric(19) NULL,
	transfertype varchar(100) NULL,
	bedidfrom numeric(10) NULL,
	bedidto numeric(10) NULL,
	categoryfrom numeric(10) NULL,
	categoryto numeric(10) NULL,
	dateoftransfer timestamp NULL,
	dateofrequest timestamp NULL,
	reasonfortransfer varchar(200) NULL,
	billabletariffcategoryid numeric(10) NULL,
	transferingnurse varchar(100) NULL,
	receivingnurse varchar(100) NULL,
	actualdateoftransfer timestamp NULL,
	needauthorization numeric(10) NULL,
	cancellationdate timestamp NULL,
	reasonforcancellation varchar(100) NULL,
	recommendeddoctor varchar(100) NULL,
	status numeric(10) NULL,
	remarks varchar(100) NULL,
	updatedby varchar(100) NULL,
	updatedate timestamp NULL
);


-- adt.bedmaster definition

-- Drop table

-- DROP TABLE adt.bedmaster;

CREATE TABLE adt.bedmaster (
	bedid numeric(10) NULL,
	leveldetailid numeric(10) NULL,
	bedcode varchar(100) NULL,
	categoryid numeric(10) NULL,
	bedstatusid numeric(10) NULL,
	levelspecialityid numeric(10) NULL,
	bedtypeid numeric(10) NULL,
	status numeric(10) NULL,
	updateddate timestamp NULL,
	updatedby varchar(100) NULL,
	beddescription varchar(2000) NULL,
	locationid numeric(10) NULL,
	effectivefromdate timestamp NULL,
	track varchar(10) NULL,
	bedcodesequnce varchar(100) NULL,
	dbremarks varchar(500) NULL,
	extn numeric(20) NULL,
	remarks varchar(100) NULL,
	createddate timestamp NULL,
	createdby varchar(100) NULL,
	subbedtypeid numeric(10) NULL
);


-- adt.bedstatus definition

-- Drop table

-- DROP TABLE adt.bedstatus;

CREATE TABLE adt.bedstatus (
	bedid numeric NULL,
	fromdate timestamp NULL,
	todate timestamp NULL,
	uhid varchar(100) NULL,
	bedstatusid numeric NULL,
	status numeric NULL,
	updatedby varchar(100) NULL,
	updateddate timestamp NULL,
	admissionid numeric NULL,
	admissiontype numeric NULL,
	transid numeric NULL,
	reason varchar(100) NULL,
	remarks varchar(100) NULL,
	amount numeric NULL,
	transtactiontype numeric NULL,
	patienttype numeric NULL,
	locationid numeric NULL
);


-- adt.bedstatusmaster definition

-- Drop table

-- DROP TABLE adt.bedstatusmaster;

CREATE TABLE adt.bedstatusmaster (
	bedstatusid numeric(10) NULL,
	bedstatusname varchar(100) NULL,
	color varchar(100) NULL,
	updateddate timestamp NULL,
	updatedby varchar(100) NULL,
	cssclassname varchar(100) NULL,
	contextmenu varchar(100) NULL,
	methodcall varchar(100) NULL
);


-- adt.bookingdetails definition

-- Drop table

-- DROP TABLE adt.bookingdetails;

CREATE TABLE adt.bookingdetails (
	bookid numeric(19) NULL,
	bookno varchar(100) NULL,
	waitingno varchar(100) NULL,
	uhid varchar(100) NULL,
	prn varchar(100) NULL,
	category numeric(10) NULL,
	expecteddateofadmission timestamp NULL,
	expecteddurationofstay numeric(10) NULL,
	sourceofbooking varchar(100) NULL,
	title varchar(50) NULL,
	firstname varchar(100) NULL,
	middlename varchar(100) NULL,
	lastname varchar(100) NULL,
	dateofbirth timestamp NULL,
	age numeric(10) NULL,
	gender numeric(10) NULL,
	contactno varchar(100) NULL,
	emailid varchar(50) NULL,
	specificpreference varchar(100) NULL,
	empno varchar(100) NULL,
	corporatecode varchar(100) NULL,
	admissionnoteavailable numeric(10) NULL,
	admissionnotetype varchar(100) NULL,
	paymentmode varchar(100) NULL,
	authorizationrequired numeric(10) NULL,
	advancepaymentneeded numeric(10) NULL,
	reasonforbedbooking varchar(200) NULL,
	bookingdate timestamp NULL,
	onlinebedbookingnumber varchar(100) NULL,
	checkbaddebt numeric(10) NULL,
	bookingamount numeric(18) NULL,
	modificationdate timestamp NULL,
	reasonformodification varchar(200) NULL,
	cancellationdate timestamp NULL,
	reasonforcancellation varchar(200) NULL,
	locationid numeric(10) NULL,
	status numeric(10) NULL,
	createdid numeric(19) NULL,
	createddate timestamp NULL,
	updatedby varchar(100) NULL,
	updateddate timestamp NULL,
	policyno varchar(2000) NULL,
	admissionno numeric NULL,
	deskreported numeric(20) NULL DEFAULT 0,
	actualreportingtime timestamp NULL,
	category2choice numeric(20) NULL,
	attendantname varchar(1000) NULL,
	attendantemail varchar(500) NULL,
	relationshipwithpatient numeric(20) NULL,
	attendantaddress varchar(2000) NULL,
	primarydoctor numeric(20) NULL,
	prspecialization numeric(20) NULL,
	secdoctor numeric(20) NULL,
	secspecialization numeric(20) NULL,
	priority varchar(100) NULL,
	staytype numeric(20) NULL,
	typeofbooking numeric(20) NULL,
	attendantphone varchar(100) NULL,
	recommendedward varchar(100) NULL,
	admissionnotepath varchar(2000) NULL,
	isolationrequired numeric(20) NULL,
	mlccheck varchar(100) NULL,
	mlcnumber varchar(1000) NULL,
	specialnotes varchar(3000) NULL,
	infectious numeric(20) NULL,
	"comments" varchar(3000) NULL,
	"source" varchar(10) NULL
);


-- adt.canceliptest definition

-- Drop table

-- DROP TABLE adt.canceliptest;

CREATE TABLE adt.canceliptest (
	transactionid numeric(19) NULL,
	primaryid varchar(100) NULL,
	approvalstatus varchar(100) NULL,
	createdby varchar(100) NULL,
	nextpendinglevel numeric(10) NULL,
	approvallevel numeric(10) NULL,
	approvalrole varchar(100) NULL,
	idxml text NULL,
	description varchar(200) NULL,
	ipno varchar(80) NULL,
	processid numeric(10) NULL,
	status numeric(10) NULL
);


-- adt.checkipconversion definition

-- Drop table

-- DROP TABLE adt.checkipconversion;

CREATE TABLE adt.checkipconversion (
	ipno varchar(50) NULL,
	datetime timestamp NULL
);


-- adt.clinicaltrialmaster definition

-- Drop table

-- DROP TABLE adt.clinicaltrialmaster;

CREATE TABLE adt.clinicaltrialmaster (
	clinicaltrialid numeric(19) NULL,
	clinicaltrialname varchar(100) NULL,
	clinicaltrialcode varchar(100) NULL,
	status numeric(10) NULL,
	updatedby varchar(100) NULL,
	updateddate timestamp NULL
);


-- adt.clobdata definition

-- Drop table

-- DROP TABLE adt.clobdata;

CREATE TABLE adt.clobdata (
	clob_data varchar(4000) NULL
);


-- adt.conversionrequest definition

-- Drop table

-- DROP TABLE adt.conversionrequest;

CREATE TABLE adt.conversionrequest (
	transactionid numeric NULL,
	uhid varchar(50) NULL,
	epnumber varchar(50) NULL,
	conversionstatus numeric NULL,
	requesteddate timestamp NULL,
	requestedby varchar(50) NULL,
	updateddate timestamp NULL,
	updatedby varchar(50) NULL
);


-- adt.covid_patient_details_adm definition

-- Drop table

-- DROP TABLE adt.covid_patient_details_adm;

CREATE TABLE adt.covid_patient_details_adm (
	ipnumber varchar(50) NULL,
	uhid varchar(100) NULL,
	nocovid_vaccine_recieved varchar(10) NULL,
	first_dosage_vaccine varchar(10) NULL,
	first_dosage_vaccine_name varchar(50) NULL,
	first_dosage_date timestamp NULL,
	second_dosage_vaccine varchar(10) NULL,
	second_dosage_vaccine_name varchar(50) NULL,
	second_dosage_date timestamp NULL,
	no_known_covid_infection varchar(10) NULL,
	current_covid_infection varchar(10) NULL,
	past_covid_infection varchar(10) NULL,
	date_last_rtpcr varchar(100) NULL,
	test_status varchar(20) NULL,
	add_remark varchar(500) NULL,
	status numeric(40) NULL,
	createddate timestamp NULL,
	locationid varchar(10) NULL,
	loginid varchar(100) NULL,
	updateddate timestamp NULL,
	updatedby varchar(20) NULL
);


-- adt.dischargeaudit definition

-- Drop table

-- DROP TABLE adt.dischargeaudit;

CREATE TABLE adt.dischargeaudit (
	ipno varchar(30) NULL,
	status varchar(30) NULL,
	dm varchar(10) NULL,
	updateddate timestamp NULL
);


-- adt.dummy definition

-- Drop table

-- DROP TABLE adt.dummy;

CREATE TABLE adt.dummy (
	in_clob text NULL
);


-- adt."event" definition

-- Drop table

-- DROP TABLE adt."event";

CREATE TABLE adt."event" (
	eventid numeric(10) NULL,
	eventdescription varchar(510) NULL
);


-- adt.facesheetformat definition

-- Drop table

-- DROP TABLE adt.facesheetformat;

CREATE TABLE adt.facesheetformat (
	locationid numeric NULL,
	reportname varchar(100) NULL,
	consent varchar(1000) NULL
);


-- adt.facility definition

-- Drop table

-- DROP TABLE adt.facility;

CREATE TABLE adt.facility (
	facilityid numeric(10) NULL,
	facilitydescription varchar(100) NULL
);


-- adt.gt_temptransbed definition

-- Drop table

-- DROP TABLE adt.gt_temptransbed;

CREATE TABLE adt.gt_temptransbed (
	bedid numeric(10) NULL
);


-- adt.gtt_temptransbed definition

-- Drop table

-- DROP TABLE adt.gtt_temptransbed;

CREATE TABLE adt.gtt_temptransbed (
	bedid numeric(10) NULL,
	ipno varchar(20) NULL,
	p_name varchar(500) NULL
);


-- adt.hoapitaldetailsbedbooking definition

-- Drop table

-- DROP TABLE adt.hoapitaldetailsbedbooking;

CREATE TABLE adt.hoapitaldetailsbedbooking (
	hos_contactnumdetails varchar(500) NULL,
	updateddate timestamp NULL,
	updatedby varchar(500) NULL,
	status numeric(10) NULL,
	locationid numeric(10) NULL
);


-- adt.inpatientaudit definition

-- Drop table

-- DROP TABLE adt.inpatientaudit;

CREATE TABLE adt.inpatientaudit (
	inpatientno varchar(100) NULL,
	admittingdoctor varchar(100) NULL,
	admissiontype varchar(100) NULL,
	billabletariff varchar(100) NULL,
	reasonforadmission varchar(400) NULL,
	reason varchar(400) NULL,
	dip varchar(10) NULL,
	paymentmode varchar(50) NULL,
	patienttype varchar(50) NULL,
	daycare varchar(50) NULL,
	updatedby varchar(100) NULL,
	lasttransactiondate timestamp NULL,
	updateddate timestamp NULL,
	billingspecialnotes varchar(800) NULL,
	freepatient numeric NULL DEFAULT 0
);


-- adt.inpatientmaster definition

-- Drop table

-- DROP TABLE adt.inpatientmaster;

CREATE TABLE adt.inpatientmaster (
	inpatientid numeric(19) NULL,
	inpatientno varchar(100) NULL,
	bookid numeric(19) NULL,
	uhid varchar(100) NULL,
	prn varchar(100) NULL,
	ern varchar(100) NULL,
	firstname varchar(600) NULL,
	middlename varchar(100) NULL,
	lastname varchar(100) NULL,
	dateofbirth timestamp NULL,
	age numeric(10) NULL,
	dip numeric(10) NULL,
	maritalstatus varchar(100) NULL,
	admissionnoteavailable numeric(10) NULL,
	admissionnotetype varchar(100) NULL,
	patienttype numeric(10) NULL,
	authorizationrequired numeric(10) NULL,
	reasonforadmission varchar(600) NULL,
	requestedbedtype numeric(10) NULL,
	dateofadmission timestamp NULL,
	expecteddurationtostay numeric(10) NULL,
	bedid numeric(10) NULL,
	advancepaymentneeded numeric(10) NULL,
	street varchar(100) NULL,
	locality varchar(100) NULL,
	district varchar(100) NULL,
	state varchar(100) NULL,
	country varchar(100) NULL,
	patientcontactno varchar(200) NULL,
	admissiontype varchar(100) NULL,
	paymentmode varchar(50) NULL,
	allergies text NULL,
	policyno text NULL,
	empno varchar(100) NULL,
	corporatecode varchar(100) NULL,
	habits text NULL,
	diabetic numeric(10) NULL,
	eligibletariffcategoryid numeric(10) NULL,
	requestedbedcategoryid numeric(10) NULL,
	allottedbedcategoryid numeric(10) NULL,
	referreddoctor numeric(10) NULL,
	attendantname varchar(100) NULL,
	contactno varchar(100) NULL,
	relationshipwithpatient numeric(10) NULL,
	email varchar(100) NULL,
	passportno varchar(100) NULL,
	issueplace varchar(100) NULL,
	issuedate timestamp NULL,
	expirydate timestamp NULL,
	needassistant numeric(10) NULL,
	needequipment numeric(10) NULL,
	equipment numeric(10) NULL,
	needescort numeric(10) NULL,
	escort varchar(100) NULL,
	needtransportation numeric(10) NULL,
	transportation varchar(100) NULL,
	doubleoccupancy numeric(10) NULL,
	needfordoubleoccupancy numeric(10) NULL,
	admissiondeposit varchar(100) NULL,
	needreligiouspriest numeric(10) NULL,
	nameofthepriest varchar(100) NULL,
	address varchar(100) NULL,
	priestno varchar(100) NULL,
	admittingdoctor numeric(10) NULL,
	primaryphysician varchar(100) NULL,
	needinterpreter numeric(10) NULL,
	"language" numeric(10) NULL,
	clinicaltrialpatient numeric(10) NULL,
	clinicaltrialcode numeric(10) NULL,
	modificationdate timestamp NULL,
	reasonformodification varchar(200) NULL,
	cancellationdate timestamp NULL,
	reasonforcancellation varchar(200) NULL,
	mlcase numeric(38) NULL,
	requestedperson varchar(100) NULL,
	addressofrequester varchar(100) NULL,
	requestercontactnumber varchar(100) NULL,
	authorizingdoctor varchar(100) NULL,
	startdate timestamp NULL,
	enddate timestamp NULL,
	status numeric(10) NULL,
	updateddate timestamp NULL,
	updatedby varchar(100) NULL,
	foodandbeveragespreference varchar(2000) NULL,
	generalpreference varchar(2000) NULL,
	housekeepingpreference varchar(2000) NULL,
	doctorsaddress varchar(2000) NULL,
	attendantaddress varchar(2000) NULL,
	remarks varchar(2000) NULL,
	locationid numeric(10) NULL,
	convertedfrom varchar(100) NULL,
	counterno varchar(100) NULL,
	shiftno varchar(100) NULL,
	ipguide numeric NULL,
	patientvenerable numeric NULL,
	typeoftransport numeric NULL,
	referaltype numeric NULL,
	doctortype varchar(100) NULL,
	referalentity numeric NULL,
	activestatus numeric NULL,
	admissionno numeric NULL,
	dischargedate timestamp NULL,
	ambulancerequestid numeric NULL,
	services text NULL,
	locationtransfer numeric NULL,
	oldlocation varchar(100) NULL,
	oldipno varchar(100) NULL,
	billingtype numeric NULL,
	settlementdone numeric NULL,
	agreementid numeric NULL,
	daycare numeric NULL,
	filepath varchar(200) NULL,
	filename varchar(200) NULL,
	docfilename varchar(200) NULL,
	dischargemedication numeric NULL,
	reason varchar(600) NULL,
	cautioncheck varchar(10) NULL,
	specialnotes varchar(800) NULL,
	consultantchange varchar(2000) NULL,
	upselling varchar(10) NULL,
	upgradation varchar(10) NULL,
	dbremarks varchar(500) NULL,
	surgicalpackcatageroy numeric(10) NULL,
	surgicalpackage numeric(10) NULL DEFAULT 0,
	secondadmittingdoctor numeric NULL,
	wardnurse varchar(600) NULL,
	housekeeping varchar(600) NULL,
	pacstatus numeric(10) NULL,
	createdby varchar(100) NULL,
	downgradation varchar(10) NULL,
	remarksupg varchar(600) NULL,
	billingspecialnotes varchar(800) NULL,
	admissionfor numeric NULL,
	dischargesf numeric NULL,
	freepatient numeric NULL DEFAULT 0,
	isdualbill numeric NULL,
	unit numeric NULL DEFAULT 0,
	unithead numeric(10) NULL,
	"source" varchar(10) NULL
);


-- adt.inpatientmaster_history definition

-- Drop table

-- DROP TABLE adt.inpatientmaster_history;

CREATE TABLE adt.inpatientmaster_history (
	inpatientid numeric(19) NULL,
	inpatientno varchar(100) NULL,
	uhid varchar(100) NULL,
	prn varchar(100) NULL,
	ern varchar(100) NULL,
	firstname varchar(600) NULL,
	middlename varchar(100) NULL,
	lastname varchar(100) NULL,
	dischargedate timestamp NULL,
	reason varchar(600) NULL,
	systmipaddress varchar(50) NULL,
	dischargemedication numeric NULL,
	status numeric(10) NULL,
	activestatus numeric(10) NULL,
	systemupdateddate timestamp NULL
);


-- adt.intl_bedcategorymaster definition

-- Drop table

-- DROP TABLE adt.intl_bedcategorymaster;

CREATE TABLE adt.intl_bedcategorymaster (
	intl_categoryid numeric(10) NULL,
	intl_categoryname varchar(100) NULL,
	updateddate timestamp NULL,
	updatedby varchar(100) NULL,
	status numeric(10) NULL,
	intl_categorydescription varchar(100) NULL,
	locationid numeric(10) NULL
);


-- adt.intl_bedsubcategorymaster definition

-- Drop table

-- DROP TABLE adt.intl_bedsubcategorymaster;

CREATE TABLE adt.intl_bedsubcategorymaster (
	intl_subcategoryid numeric(10) NULL,
	intl_subcategoryname varchar(100) NULL,
	updateddate timestamp NULL,
	updatedby varchar(100) NULL,
	status numeric(10) NULL,
	intl_subcategorydescription varchar(100) NULL,
	locationid numeric(10) NULL
);


-- adt.iplist_gtt definition

-- Drop table

-- DROP TABLE adt.iplist_gtt;

CREATE TABLE adt.iplist_gtt (
	ipno varchar(100) NULL
);


-- adt.leveldetail definition

-- Drop table

-- DROP TABLE adt.leveldetail;

CREATE TABLE adt.leveldetail (
	leveldetailid numeric(10) NULL,
	parentlevelid numeric(10) NULL,
	leveldetailcode varchar(100) NULL,
	leveldetailname varchar(100) NULL,
	levelno numeric(10) NULL,
	leveltypeid numeric(10) NULL,
	leveloccupancytypeid numeric(10) NULL,
	levelspecialityid numeric(10) NULL,
	status numeric(10) NULL,
	updateddate timestamp NULL,
	updatedby varchar(100) NULL,
	leveldetaildescription varchar(2000) NULL,
	createddate timestamp NULL,
	createdby varchar(100) NULL
);


-- adt.leveldetail_bkp_use definition

-- Drop table

-- DROP TABLE adt.leveldetail_bkp_use;

CREATE TABLE adt.leveldetail_bkp_use (
	leveldetailid numeric(10) NULL,
	parentlevelid numeric(10) NULL,
	leveldetailcode varchar(100) NULL,
	leveldetailname varchar(100) NULL,
	levelno numeric(10) NULL,
	leveltypeid numeric(10) NULL,
	leveloccupancytypeid numeric(10) NULL,
	levelspecialityid numeric(10) NULL,
	status numeric(10) NULL,
	updateddate timestamp NULL,
	updatedby varchar(100) NULL,
	leveldetaildescription varchar(2000) NULL,
	createddate timestamp NULL,
	createdby varchar(100) NULL
);


-- adt.levelmaster definition

-- Drop table

-- DROP TABLE adt.levelmaster;

CREATE TABLE adt.levelmaster (
	levelno numeric(10) NULL,
	levelname varchar(100) NULL,
	updateddate timestamp NULL,
	updatedby varchar(100) NULL,
	leveldescription varchar(4000) NULL
);


-- adt.logprevbed definition

-- Drop table

-- DROP TABLE adt.logprevbed;

CREATE TABLE adt.logprevbed (
	prevbed numeric NULL
);


-- adt.lovdetails definition

-- Drop table

-- DROP TABLE adt.lovdetails;

CREATE TABLE adt.lovdetails (
	lovdetailsid numeric(10) NULL,
	lovid numeric(10) NULL,
	lovdetailvalue varchar(50) NULL,
	lovdetaildescription varchar(50) NULL,
	lovdetailvalueatt varchar(50) NULL,
	lovpriority numeric(10) NULL,
	status numeric(2) NULL,
	updatedby varchar(50) NULL,
	updateddate timestamp NULL,
	createdby varchar(50) NULL,
	createddate timestamp NULL
);


-- adt.lovmaster definition

-- Drop table

-- DROP TABLE adt.lovmaster;

CREATE TABLE adt.lovmaster (
	lovid numeric(10) NULL,
	lovcode varchar(20) NULL,
	lovname varchar(50) NULL,
	lovdescription varchar(50) NULL,
	status numeric NULL,
	updatedby varchar(50) NULL,
	updateddate timestamp NULL,
	createdby varchar(50) NULL,
	createddate timestamp NULL
);


-- adt.mlcdetails definition

-- Drop table

-- DROP TABLE adt.mlcdetails;

CREATE TABLE adt.mlcdetails (
	mlcid numeric(19) NULL,
	mlctype varchar(100) NULL,
	transport varchar(100) NULL,
	incidentsite varchar(200) NULL,
	broughtby varchar(200) NULL,
	policestation varchar(200) NULL,
	accidentreportno varchar(100) NULL,
	dutyconstablename varchar(100) NULL,
	dutyconstablecontactno varchar(100) NULL,
	createdby varchar(100) NULL,
	createddate timestamp NULL,
	updatedby varchar(100) NULL,
	updatedate timestamp NULL,
	status numeric(10) NULL,
	inpatientid numeric(19) NULL,
	inpatientno varchar(20) NULL,
	uhid varchar(20) NULL,
	locationid numeric(19) NULL,
	mlcno varchar(50) NULL
);


-- adt.mlcrecord definition

-- Drop table

-- DROP TABLE adt.mlcrecord;

CREATE TABLE adt.mlcrecord (
	uhid varchar(100) NULL,
	patientfiletype varchar(100) NULL,
	patientfilename varchar(4000) NULL,
	patientfilepath varchar(4000) NULL,
	status numeric(1) NULL,
	createdby varchar(100) NULL,
	createddate timestamp NULL,
	locationid numeric(10) NULL
);


-- adt.numbergenerator definition

-- Drop table

-- DROP TABLE adt.numbergenerator;

CREATE TABLE adt.numbergenerator (
	locationid varchar(20) NULL,
	locationcode varchar(25) NULL,
	ahcid numeric NULL,
	bookid varchar(50) NULL,
	bookformat varchar(50) NULL,
	epprefix varchar(50) NULL,
	epseqname varchar(500) NULL
);


-- adt.pat_srch_temp definition

-- Drop table

-- DROP TABLE adt.pat_srch_temp;

CREATE TABLE adt.pat_srch_temp (
	iv_uhid varchar(100) NULL,
	iv_prn varchar(100) NULL,
	iv_ern varchar(100) NULL,
	id_fromdateofbooking timestamp NULL,
	id_todateofbooking timestamp NULL,
	id_dateofadmission timestamp NULL,
	iv_waitinglistno varchar(100) NULL,
	iv_bookno varchar(100) NULL,
	iv_inpatientno varchar(100) NULL,
	iv_firstname varchar(600) NULL,
	iv_middlename varchar(100) NULL,
	iv_lastname varchar(100) NULL,
	in_locationid numeric NULL,
	iv_patientstatus varchar(100) NULL,
	in_leveldetailid numeric(10) NULL
);


-- adt.patientchemotherapydetails definition

-- Drop table

-- DROP TABLE adt.patientchemotherapydetails;

CREATE TABLE adt.patientchemotherapydetails (
	inpatientid numeric NULL,
	scheduleddate timestamp NULL,
	actualdate timestamp NULL,
	visitstatus varchar(100) NULL,
	updatedby varchar(100) NULL,
	updateddate timestamp NULL,
	status numeric NULL
);


-- adt.patientstatusmaster definition

-- Drop table

-- DROP TABLE adt.patientstatusmaster;

CREATE TABLE adt.patientstatusmaster (
	statusid numeric NULL,
	statusname varchar(50) NULL,
	updatedby varchar(50) NULL,
	updateddate timestamp NULL,
	abbreviation varchar(50) NULL
);


-- adt.plan_table definition

-- Drop table

-- DROP TABLE adt.plan_table;

CREATE TABLE adt.plan_table (
	statement_id varchar(30) NULL,
	"timestamp" timestamp NULL,
	remarks varchar(80) NULL,
	operation varchar(30) NULL,
	"options" varchar(30) NULL,
	object_node varchar(128) NULL,
	object_owner varchar(30) NULL,
	object_name varchar(30) NULL,
	object_instance numeric(40) NULL,
	object_type varchar(30) NULL,
	optimizer varchar(255) NULL,
	search_columns numeric NULL,
	id numeric(40) NULL,
	parent_id numeric(40) NULL,
	"position" numeric(40) NULL,
	"cost" numeric(40) NULL,
	"cardinality" numeric(40) NULL,
	bytes numeric(40) NULL,
	other_tag varchar(255) NULL,
	partition_start varchar(255) NULL,
	partition_stop varchar(255) NULL,
	partition_id numeric(40) NULL,
	other text NULL,
	distribution varchar(30) NULL,
	cpu_cost numeric(40) NULL,
	io_cost numeric(40) NULL,
	temp_space numeric(40) NULL
);


-- adt.pv definition

-- Drop table

-- DROP TABLE adt.pv;

CREATE TABLE adt.pv (
	prevousbed numeric(40) NULL
);


-- adt.referraldoctor definition

-- Drop table

-- DROP TABLE adt.referraldoctor;

CREATE TABLE adt.referraldoctor (
	referraldoctorid numeric(19) NULL,
	referraldoctorcode varchar(100) NULL,
	referraldoctorname varchar(100) NULL,
	referraldoctorspecilization varchar(100) NULL,
	status numeric(10) NULL,
	updatedby varchar(100) NULL,
	updateddate timestamp NULL
);


-- adt.requestqueue definition

-- Drop table

-- DROP TABLE adt.requestqueue;

CREATE TABLE adt.requestqueue (
	requestqueueid varchar(400) NULL,
	requestmessage text NULL,
	statuscode numeric(10) NULL,
	requestdatetime timestamp NULL,
	transactiondatetime timestamp NULL,
	retries numeric(10) NULL,
	groupid numeric(10) NULL,
	priority numeric(10) NULL
);


-- adt.requesttype definition

-- Drop table

-- DROP TABLE adt.requesttype;

CREATE TABLE adt.requesttype (
	requestnameid numeric(10) NULL,
	requestname varchar(100) NULL,
	minimumtime numeric(10) NULL,
	maximumtime numeric(10) NULL,
	pollinginterval numeric(10) NULL,
	waittime numeric(10) NULL
);


-- adt.responsequeue definition

-- Drop table

-- DROP TABLE adt.responsequeue;

CREATE TABLE adt.responsequeue (
	responsequeueid varchar(400) NULL,
	responsemessage text NULL,
	statuscode numeric(10) NULL,
	responsedatetime timestamp NULL,
	transactiondatetime timestamp NULL,
	retries numeric(10) NULL,
	priority numeric(10) NULL
);


-- adt.sequencemap definition

-- Drop table

-- DROP TABLE adt.sequencemap;

CREATE TABLE adt.sequencemap (
	locationid numeric(21) NULL,
	locationname varchar(100) NULL,
	locationcode varchar(100) NULL,
	sequencename varchar(100) NULL
);


-- adt.severity definition

-- Drop table

-- DROP TABLE adt.severity;

CREATE TABLE adt.severity (
	severityid numeric(10) NULL,
	severitydescription varchar(100) NULL
);


-- adt.smstemp definition

-- Drop table

-- DROP TABLE adt.smstemp;

CREATE TABLE adt.smstemp (
	errormsg varchar(1000) NULL,
	date1 timestamp NULL,
	patient_id varchar(50) NULL,
	bedid numeric NULL
);


-- adt.status definition

-- Drop table

-- DROP TABLE adt.status;

CREATE TABLE adt.status (
	statuscode numeric(10) NULL,
	statusname varchar(100) NULL,
	description varchar(510) NULL
);


-- adt.temp_bedoccupancy definition

-- Drop table

-- DROP TABLE adt.temp_bedoccupancy;

CREATE TABLE adt.temp_bedoccupancy (
	categoryname varchar(40) NULL,
	occupancycount numeric NULL,
	occupancydate timestamp NULL
);


-- adt.temp_inpatient definition

-- Drop table

-- DROP TABLE adt.temp_inpatient;

CREATE TABLE adt.temp_inpatient (
	inpatientno varchar(40) NULL,
	bedid numeric NULL
);


-- adt.temp_occupancy definition

-- Drop table

-- DROP TABLE adt.temp_occupancy;

CREATE TABLE adt.temp_occupancy (
	bedtransactionid numeric NULL,
	ipnumber varchar(10) NULL
);


-- adt.temp_workflowtransaction definition

-- Drop table

-- DROP TABLE adt.temp_workflowtransaction;

CREATE TABLE adt.temp_workflowtransaction (
	transactionid numeric(19) NULL,
	processid numeric(10) NULL,
	startdate timestamp NULL,
	enddate timestamp NULL,
	approvalstatus varchar(100) NULL,
	nextpendinglevel numeric(10) NULL,
	maxlevel numeric(10) NULL,
	minlevel numeric(10) NULL,
	locationid numeric(10) NULL,
	primaryid varchar(100) NULL,
	idxml text NULL,
	description varchar(200) NULL,
	createdby varchar(100) NULL,
	updateddate timestamp NULL,
	ipno varchar(80) NULL
);


-- adt.tempbedsequnece definition

-- Drop table

-- DROP TABLE adt.tempbedsequnece;

CREATE TABLE adt.tempbedsequnece (
	bedcode varchar(50) NULL,
	newbedcode varchar(50) NULL
);


-- adt.tempinpatientno definition

-- Drop table

-- DROP TABLE adt.tempinpatientno;

CREATE TABLE adt.tempinpatientno (
	inpatientno varchar(100) NULL,
	status numeric NULL,
	transferstatus numeric NULL,
	processid numeric NULL,
	transactionid numeric NULL,
	bedid_to numeric NULL
);


-- adt.tempip definition

-- Drop table

-- DROP TABLE adt.tempip;

CREATE TABLE adt.tempip (
	test text NULL,
	id varchar(20) NULL
);


-- adt.tempipno definition

-- Drop table

-- DROP TABLE adt.tempipno;

CREATE TABLE adt.tempipno (
	inpatientno varchar(20) NULL,
	status numeric NULL,
	transferstatus numeric NULL,
	processid numeric NULL,
	transactionid numeric NULL
);


-- adt.temptransbed definition

-- Drop table

-- DROP TABLE adt.temptransbed;

CREATE TABLE adt.temptransbed (
	bedid numeric(10) NULL
);


-- adt.temptransbedemr definition

-- Drop table

-- DROP TABLE adt.temptransbedemr;

CREATE TABLE adt.temptransbedemr (
	bedid numeric(10) NULL
);


-- adt.temptransrequest definition

-- Drop table

-- DROP TABLE adt.temptransrequest;

CREATE TABLE adt.temptransrequest (
	inpatientno varchar(100) NULL,
	transferstatus numeric NULL,
	transactionid numeric NULL,
	processid numeric NULL,
	bedid_to numeric NULL
);


-- adt.tempxml definition

-- Drop table

-- DROP TABLE adt.tempxml;

CREATE TABLE adt.tempxml (
	adtxml text NULL
);


-- adt.testtelphone definition

-- Drop table

-- DROP TABLE adt.testtelphone;

CREATE TABLE adt.testtelphone (
	vacantbed numeric NULL,
	previousbed numeric NULL,
	tobed numeric NULL
);


-- adt.tmpldetailcls definition

-- Drop table

-- DROP TABLE adt.tmpldetailcls;

CREATE TABLE adt.tmpldetailcls (
	bedid numeric(10) NULL,
	bedcode varchar(100) NULL,
	categoryid numeric(10) NULL,
	bedstatusid numeric(10) NULL,
	leveldetailid numeric(10) NULL,
	leveldetailname varchar(100) NULL,
	levelname varchar(100) NULL,
	parentlevelid numeric(10) NULL,
	levelno numeric(10) NULL
);


-- adt.tmpldetailgbl definition

-- Drop table

-- DROP TABLE adt.tmpldetailgbl;

CREATE TABLE adt.tmpldetailgbl (
	bedid numeric(10) NULL,
	inpatientid numeric(10) NULL,
	bedcode varchar(200) NULL,
	categoryid numeric(10) NULL,
	bedstatusid numeric(10) NULL,
	leveldetailid numeric(10) NULL,
	leveldetailcode varchar(200) NULL,
	leveldetailname varchar(200) NULL,
	levelname varchar(200) NULL,
	parentlevelid numeric(10) NULL,
	levelno numeric(10) NULL,
	levelspecialityid numeric(10) NULL
);


-- adt.tmpldetailgbl_e definition

-- Drop table

-- DROP TABLE adt.tmpldetailgbl_e;

CREATE TABLE adt.tmpldetailgbl_e (
	bedid numeric(10) NULL,
	inpatientid numeric(10) NULL,
	bedcode varchar(200) NULL,
	categoryid numeric(10) NULL,
	bedstatusid numeric(10) NULL,
	leveldetailid numeric(10) NULL,
	leveldetailcode varchar(200) NULL,
	leveldetailname varchar(200) NULL,
	levelname varchar(200) NULL,
	parentlevelid numeric(10) NULL,
	levelno numeric(10) NULL,
	levelspecialityid numeric(10) NULL,
	subbedtypeid numeric(10) NULL
);


-- adt.tmpldetailgbltest definition

-- Drop table

-- DROP TABLE adt.tmpldetailgbltest;

CREATE TABLE adt.tmpldetailgbltest (
	bedid numeric(10) NULL,
	inpatientid numeric(10) NULL,
	bedcode varchar(200) NULL,
	categoryid numeric(10) NULL,
	bedstatusid numeric(10) NULL,
	leveldetailid numeric(10) NULL,
	leveldetailcode varchar(200) NULL,
	leveldetailname varchar(200) NULL,
	levelname varchar(200) NULL,
	parentlevelid numeric(10) NULL,
	levelno numeric(10) NULL,
	levelspecialityid numeric(10) NULL
);


-- adt.tmpldetailpob definition

-- Drop table

-- DROP TABLE adt.tmpldetailpob;

CREATE TABLE adt.tmpldetailpob (
	bedid numeric(10) NULL,
	bedcode varchar(100) NULL,
	categoryid numeric(10) NULL,
	bedstatusid numeric(10) NULL,
	leveldetailid numeric(10) NULL,
	leveldetailname varchar(100) NULL,
	levelname varchar(100) NULL,
	parentlevelid numeric(10) NULL,
	levelno numeric(10) NULL
);


-- adt.tmpldetailsh definition

-- Drop table

-- DROP TABLE adt.tmpldetailsh;

CREATE TABLE adt.tmpldetailsh (
	seq numeric(10) NULL,
	leveldetailid numeric(10) NULL
);


-- adt.track definition

-- Drop table

-- DROP TABLE adt.track;

CREATE TABLE adt.track (
	"xml" text NULL,
	"no" numeric NULL
);


-- adt.track1 definition

-- Drop table

-- DROP TABLE adt.track1;

CREATE TABLE adt.track1 (
	in_leveldetailid varchar(50) NULL,
	in_categoryid varchar(50) NULL,
	in_levelspecialityid varchar(50) NULL,
	clob1 text NULL
);


-- adt.trackadmissiontype definition

-- Drop table

-- DROP TABLE adt.trackadmissiontype;

CREATE TABLE adt.trackadmissiontype (
	admissiontype varchar(100) NULL,
	inpatinrid varchar(100) NULL,
	trackdate timestamp NULL
);


-- adt.trackadmissiontype1 definition

-- Drop table

-- DROP TABLE adt.trackadmissiontype1;

CREATE TABLE adt.trackadmissiontype1 (
	admissiontype varchar(100) NULL,
	inpatinrid varchar(100) NULL,
	trackdate timestamp NULL
);


-- adt.trackipstastus definition

-- Drop table

-- DROP TABLE adt.trackipstastus;

CREATE TABLE adt.trackipstastus (
	inpatineid numeric(19) NULL,
	admissisondate timestamp NULL,
	status numeric(10) NULL
);


-- adt.trackupdatepatientstatus definition

-- Drop table

-- DROP TABLE adt.trackupdatepatientstatus;

CREATE TABLE adt.trackupdatepatientstatus (
	ipno varchar(30) NULL,
	status varchar(30) NULL,
	dm varchar(10) NULL,
	updateddate timestamp NULL,
	loginid varchar(100) NULL
);


-- adt.transactionrequest definition

-- Drop table

-- DROP TABLE adt.transactionrequest;

CREATE TABLE adt.transactionrequest (
	transactionid numeric NULL,
	processid numeric NULL,
	requestxml text NULL,
	status numeric NULL,
	updatedby varchar(100) NULL,
	updateddate timestamp NULL,
	categoryfrom varchar(10) NULL,
	categoryto varchar(10) NULL,
	bedfrom varchar(10) NULL,
	bedto varchar(10) NULL,
	transferstatus numeric NULL,
	transferouttime timestamp NULL,
	bedidto numeric NULL
);


-- adt.workflowprocesslevel definition

-- Drop table

-- DROP TABLE adt.workflowprocesslevel;

CREATE TABLE adt.workflowprocesslevel (
	processid numeric(10) NULL,
	startdate timestamp NULL,
	enddate timestamp NULL,
	approvalrole numeric(19) NULL,
	approvallevel numeric(10) NULL,
	updatedby varchar(100) NULL,
	updateddate timestamp NULL,
	duration numeric NULL
);


-- adt.workflowprocessmaster definition

-- Drop table

-- DROP TABLE adt.workflowprocessmaster;

CREATE TABLE adt.workflowprocessmaster (
	processid numeric(10) NULL,
	processdescription varchar(100) NULL,
	startdate timestamp NULL,
	enddate timestamp NULL,
	status bpchar(10) NULL,
	maxlevel numeric(10) NULL,
	minlevel numeric(10) NULL,
	locationid numeric(10) NULL,
	updatedby varchar(100) NULL,
	updateddate timestamp NULL,
	pagename varchar(50) NULL
);


-- adt.workflowtransaction definition

-- Drop table

-- DROP TABLE adt.workflowtransaction;

CREATE TABLE adt.workflowtransaction (
	transactionid numeric(19) NULL,
	processid numeric(10) NULL,
	startdate timestamp NULL,
	enddate timestamp NULL,
	approvalstatus varchar(100) NULL,
	nextpendinglevel numeric(10) NULL,
	maxlevel numeric(10) NULL,
	minlevel numeric(10) NULL,
	locationid numeric(10) NULL,
	primaryid varchar(100) NULL,
	idxml text NULL,
	description varchar(200) NULL,
	createdby varchar(100) NULL,
	updateddate timestamp NULL,
	ipno varchar(80) NULL
);


-- adt.workflowtransactionlevel definition

-- Drop table

-- DROP TABLE adt.workflowtransactionlevel;

CREATE TABLE adt.workflowtransactionlevel (
	transactionid numeric(19) NULL,
	updateddate timestamp NULL,
	approvalstatus varchar(100) NULL,
	approvalrole varchar(100) NULL,
	approvallevel numeric(10) NULL,
	startdate timestamp NULL,
	enddate timestamp NULL,
	status numeric(10) NULL,
	updatedby varchar(100) NULL,
	remarks varchar(4000) NULL
);