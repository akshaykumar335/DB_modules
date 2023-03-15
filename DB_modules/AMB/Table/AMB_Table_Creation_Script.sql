-- amb.agencymaster definition

-- Drop table

-- DROP TABLE amb.agencymaster;

CREATE TABLE amb.agencymaster (
	agencyid numeric(10) NOT NULL,
	locationid numeric(10) NULL,
	agencycode varchar(31) NULL,
	nameofagency varchar(100) NULL,
	noofambulances numeric(10) NULL,
	contactnumber varchar(100) NULL,
	contactpersonname varchar(100) NULL,
	street varchar(100) NULL,
	locality varchar(100) NULL,
	city numeric(10) NULL,
	district numeric(10) NULL,
	state numeric(10) NULL,
	country numeric(10) NULL,
	pincode varchar(100) NULL,
	agencystatus numeric(10) NULL,
	createdby varchar(100) NULL,
	createddate timestamp NULL,
	status numeric(10) NULL,
	operationalhr numeric(10) NULL,
	extambtype text NULL
);


-- amb.ambulancedispatch definition

-- Drop table

-- DROP TABLE amb.ambulancedispatch;

CREATE TABLE amb.ambulancedispatch (
	ambulancedispatchid numeric(19) NOT NULL,
	ambulancerequestdetailid numeric(19) NULL,
	emergencycallid numeric(19) NULL,
	casetypeid numeric(21) NULL,
	ambulanceid numeric(21) NULL,
	driverid text NULL,
	emtid text NULL,
	doctorid text NULL,
	itemid text NULL,
	facilities text NULL,
	itemsreturned text NULL,
	facilitiesreturned text NULL,
	startingmeterreading numeric(10) NULL,
	endmeterreading numeric(10) NULL,
	totaldistancetravelled numeric(10) NULL,
	dispatchdate timestamp NULL,
	returndate timestamp NULL,
	dispatchtime timestamp NULL,
	returntime timestamp NULL,
	totaltimetaken varchar(50) NULL,
	patientpickedup numeric(10) NULL,
	reasonfornotpickingup varchar(4000) NULL,
	remarks varchar(4000) NULL,
	paymentdone numeric(10) NULL,
	reasonfornotpaying varchar(200) NULL,
	createdby varchar(100) NULL,
	createddate timestamp NULL,
	status numeric(10) NULL,
	locationid numeric(10) NULL,
	patientpickupdate timestamp NULL,
	medicinename text NULL,
	equipmentname varchar(4000) NULL,
	consumables varchar(4000) NULL,
	equipmentsreturned text NULL,
	medicinesreturned varchar(4000) NULL,
	consumablesreturned text NULL,
	totalamountdeposited numeric(10) NULL,
	billno varchar(800) NULL,
	modepayment numeric(20) NULL,
	outside numeric(20) NULL,
	flight numeric(20) NULL,
	speciality numeric(20) NULL
);


-- amb.ambulancerequest definition

-- Drop table

-- DROP TABLE amb.ambulancerequest;

CREATE TABLE amb.ambulancerequest (
	ambulancerequestid numeric(19) NOT NULL,
	locationid numeric(10) NULL,
	requesttype numeric(10) NULL,
	registered numeric(10) NULL,
	registrationtype varchar(400) NULL,
	uhid varchar(400) NULL,
	preregistrationno varchar(400) NULL,
	emergencyno varchar(400) NULL,
	title varchar(400) NULL,
	firstname varchar(400) NULL,
	middlename varchar(400) NULL,
	lastname varchar(400) NULL,
	telephoneno varchar(400) NULL,
	createdby varchar(400) NULL,
	createddate timestamp NULL,
	status numeric(10) NULL,
	ambulancetypeid numeric(10) NULL,
	sourceofbooking varchar(400) NULL,
	receiptno varchar(10) NULL,
	ipno varchar(800) NULL,
	multiplepatient varchar(1000) NULL,
	callername varchar(1000) NULL,
	callermob varchar(500) NULL
);


-- amb.ambulancerequestdetail definition

-- Drop table

-- DROP TABLE amb.ambulancerequestdetail;

CREATE TABLE amb.ambulancerequestdetail (
	ambulancerequestdetailid numeric(10) NOT NULL,
	ambulancerequestid numeric(19) NOT NULL,
	pahospitalname varchar(800) NULL,
	pastreet varchar(800) NULL,
	palocality varchar(800) NULL,
	pacity numeric(10) NULL,
	padistrict numeric(10) NULL,
	pastate numeric(10) NULL,
	pacountry numeric(10) NULL,
	papincode varchar(800) NULL,
	palandmark varchar(2000) NULL,
	dahospitalname varchar(800) NULL,
	dastreet varchar(800) NULL,
	dalocality varchar(800) NULL,
	dacity numeric(10) NULL,
	dadistrict numeric(10) NULL,
	dastate numeric(10) NULL,
	dacountry numeric(10) NULL,
	dapincode varchar(800) NULL,
	dalandmark varchar(800) NULL,
	reasonforbooking varchar(1600) NULL,
	consultantname varchar(800) NULL,
	casetypeid numeric(10) NULL,
	facilities text NULL,
	ambulancerequireddate timestamp NULL,
	doctorrequired numeric(10) NULL,
	twowaytrip numeric(10) NULL,
	paymentrequired numeric(10) NULL,
	reasonfornotpaying varchar(1600) NULL,
	modeofpayment varchar(800) NULL,
	amountpaid numeric(10) NULL,
	reasonfornotdispatching varchar(800) NULL,
	cancellationdate timestamp NULL,
	reasonforcancellation varchar(1600) NULL,
	createdby varchar(800) NULL,
	status numeric(10) NULL,
	createddate timestamp NULL,
	receiptnumber varchar(50) NULL,
	casetypedesc varchar(200) NULL
);


-- amb.audit1 definition

-- Drop table

-- DROP TABLE amb.audit1;

CREATE TABLE amb.audit1 (
	auditid numeric(10) NOT NULL,
	eventid numeric(10) NULL,
	eventdate timestamp NOT NULL,
	auditlevelid numeric(10) NULL,
	severityid numeric(10) NULL,
	facilityid numeric(10) NULL,
	optionaleventdata varchar(2000) NULL,
	userid varchar(100) NULL,
	requestid uuid NULL,
	requesttypeid numeric(10) NULL
);


-- amb.auditlevel definition

-- Drop table

-- DROP TABLE amb.auditlevel;

CREATE TABLE amb.auditlevel (
	auditlevelid numeric(10) NOT NULL,
	auditleveldescription varchar(100) NULL
);


-- amb.auditrequesttype definition

-- Drop table

-- DROP TABLE amb.auditrequesttype;

CREATE TABLE amb.auditrequesttype (
	requesttypeid numeric(10) NOT NULL,
	requesttypename varchar(100) NOT NULL,
	description varchar(510) NULL
);


-- amb.casespecificmaster definition

-- Drop table

-- DROP TABLE amb.casespecificmaster;

CREATE TABLE amb.casespecificmaster (
	casetypeid numeric(10) NOT NULL,
	casetypecode varchar(31) NULL,
	casetypename varchar(100) NULL,
	updatedby varchar(100) NULL,
	updateddate timestamp NULL,
	status numeric(10) NULL,
	equipmentname text NULL,
	facilities text NULL,
	consumables text NULL,
	medicinename text NULL
);


-- amb.decisionmaster definition

-- Drop table

-- DROP TABLE amb.decisionmaster;

CREATE TABLE amb.decisionmaster (
	decisionid numeric(10) NOT NULL,
	decisiondescription varchar(100) NULL
);


-- amb.doctormaster definition

-- Drop table

-- DROP TABLE amb.doctormaster;

CREATE TABLE amb.doctormaster (
	doctorid numeric(19) NOT NULL,
	employeeid varchar(100) NULL,
	doctorname varchar(100) NULL,
	doctorcontactnumber varchar(100) NULL,
	doctoravailability numeric(10) NULL,
	status numeric(10) NULL
);


-- amb.driverallowances definition

-- Drop table

-- DROP TABLE amb.driverallowances;

CREATE TABLE amb.driverallowances (
	driverallowanceid numeric(10) NOT NULL,
	driverid numeric(10) NULL,
	expenses numeric(10, 2) NULL,
	allowances numeric(10, 2) NULL,
	advancedrawn numeric(10, 2) NULL,
	balance numeric(10, 2) NULL,
	remarks varchar(200) NULL,
	createdby varchar(100) NULL,
	createddate timestamp NULL,
	status numeric(10) NULL,
	ambulancerequestid numeric NULL
);


-- amb.drivermaster definition

-- Drop table

-- DROP TABLE amb.drivermaster;

CREATE TABLE amb.drivermaster (
	driverid numeric(10) NOT NULL,
	employeeid varchar(100) NULL,
	drivername varchar(100) NULL,
	drivercontactnumber varchar(100) NULL,
	driveravailability numeric(10) NULL,
	updatedby varchar(100) NULL,
	updateddate timestamp NULL,
	status numeric(10) NULL
);


-- amb.dupcase definition

-- Drop table

-- DROP TABLE amb.dupcase;

CREATE TABLE amb.dupcase (
	casetypeid numeric(10) NOT NULL,
	casetypecode varchar(31) NULL,
	casetypename varchar(100) NULL,
	updatedby varchar(100) NULL,
	updateddate timestamp NULL,
	status numeric(10) NULL,
	equipmentname varchar(1000) NULL,
	facilities varchar(1000) NULL,
	consumables varchar(1000) NULL,
	medicinename varchar(1000) NULL
);


-- amb.emergencycall definition

-- Drop table

-- DROP TABLE amb.emergencycall;

CREATE TABLE amb.emergencycall (
	emergencycallid numeric NOT NULL,
	locationid numeric NULL,
	requesttype numeric NULL,
	dateofcalling timestamp NULL,
	registrationtype varchar(200) NULL,
	timeofcalling timestamp NULL,
	numbercalledon varchar(200) NULL,
	phonereceivedby varchar(200) NULL,
	nameofthecaller varchar(200) NULL,
	phonenumberofcaller varchar(200) NULL,
	casetypeid numeric NULL,
	"location" varchar(200) NULL,
	street varchar(200) NULL,
	locality varchar(200) NULL,
	city numeric NULL,
	district numeric NULL,
	state numeric NULL,
	country numeric NULL,
	pincode varchar(200) NULL,
	landmark varchar(200) NULL,
	patientname varchar(200) NULL,
	uhid varchar(200) NULL,
	preregistrationno varchar(200) NULL,
	emergencyno varchar(200) NULL,
	reasonforcalling varchar(400) NULL,
	requireambulance numeric NULL,
	medicaladviceneeded numeric NULL,
	ispatientcomingtoapollo numeric NULL,
	transfercalltoemergency numeric NULL,
	updateddate timestamp NULL,
	updatedby varchar(200) NULL,
	status numeric NULL,
	locationtype varchar(400) NULL,
	frombranchhospital numeric(20) NULL,
	casetypedesc varchar(200) NULL
);


-- amb.emtmaster definition

-- Drop table

-- DROP TABLE amb.emtmaster;

CREATE TABLE amb.emtmaster (
	emtid numeric(19) NOT NULL,
	employeeid varchar(100) NULL,
	emtname varchar(100) NULL,
	emtcontactnumber varchar(100) NULL,
	emtavailability numeric(10) NULL,
	updatedby varchar(100) NULL,
	updateddate timestamp NULL,
	status numeric(10) NULL
);


-- amb."event" definition

-- Drop table

-- DROP TABLE amb."event";

CREATE TABLE amb."event" (
	eventid numeric(10) NOT NULL,
	eventdescription varchar(510) NULL
);


-- amb.facility definition

-- Drop table

-- DROP TABLE amb.facility;

CREATE TABLE amb.facility (
	facilityid numeric(10) NOT NULL,
	facilitydescription varchar(100) NULL
);


-- amb.facilitymaster definition

-- Drop table

-- DROP TABLE amb.facilitymaster;

CREATE TABLE amb.facilitymaster (
	facilityid numeric(10) NOT NULL,
	facilitycode varchar(31) NULL,
	facilityname varchar(100) NULL,
	facilitydescription varchar(200) NULL,
	createdby varchar(100) NULL,
	createddate timestamp NULL,
	status numeric(10) NULL
);


-- amb.inventorymaster definition

-- Drop table

-- DROP TABLE amb.inventorymaster;

CREATE TABLE amb.inventorymaster (
	itemid numeric(19) NOT NULL,
	itemcode varchar(31) NULL,
	itemname varchar(100) NULL,
	itemdescription varchar(100) NULL,
	minimumquantityrequired numeric(10) NULL,
	updatedby varchar(100) NULL,
	updateddate timestamp NULL,
	status numeric(10) NULL
);


-- amb.permitmaster definition

-- Drop table

-- DROP TABLE amb.permitmaster;

CREATE TABLE amb.permitmaster (
	permitid numeric(10) NOT NULL,
	permitdescription varchar(100) NULL,
	createdby varchar(100) NULL,
	createddate timestamp NULL,
	status numeric(10) NULL
);


-- amb.plan_table definition

-- Drop table

-- DROP TABLE amb.plan_table;

CREATE TABLE amb.plan_table (
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


-- amb.questionnaire definition

-- Drop table

-- DROP TABLE amb.questionnaire;

CREATE TABLE amb.questionnaire (
	residence varchar(100) NULL,
	liftavailable varchar(10) NULL,
	callername varchar(500) NULL,
	callermob varchar(200) NULL,
	relation numeric(10) NULL,
	housekeeping varchar(100) NULL,
	traindet varchar(500) NULL,
	flightdet varchar(500) NULL,
	patientloc varchar(500) NULL,
	"sequence" numeric(30) NULL,
	locationid numeric(20) NULL,
	requestid numeric(30) NULL
);


-- amb.requesttype definition

-- Drop table

-- DROP TABLE amb.requesttype;

CREATE TABLE amb.requesttype (
	requestnameid numeric(10) NOT NULL,
	requestname varchar(100) NULL,
	minimumtime numeric(10) NULL,
	maximumtime numeric(10) NULL,
	pollinginterval numeric(10) NULL,
	waittime numeric(10) NULL
);


-- amb.severity definition

-- Drop table

-- DROP TABLE amb.severity;

CREATE TABLE amb.severity (
	severityid numeric(10) NOT NULL,
	severitydescription varchar(100) NULL
);


-- amb.status definition

-- Drop table

-- DROP TABLE amb.status;

CREATE TABLE amb.status (
	statuscode numeric(10) NOT NULL,
	statusname varchar(100) NOT NULL,
	description varchar(510) NULL
);


-- amb.ambulancefacility definition

-- Drop table

-- DROP TABLE amb.ambulancefacility;

CREATE TABLE amb.ambulancefacility (
	ambulanceid numeric(10) NOT NULL,
	facilityid numeric(10) NOT NULL,
	createdby varchar(100) NULL,
	createddate timestamp NULL,
	status numeric(10) NULL
);


-- amb.ambulancemaster definition

-- Drop table

-- DROP TABLE amb.ambulancemaster;

CREATE TABLE amb.ambulancemaster (
	ambulanceid numeric(10) NOT NULL,
	ambulancecode varchar(100) NULL,
	locationid numeric(10) NULL,
	ambulanceregistrationnumber varchar(100) NULL,
	registrationstate numeric(10) NULL,
	ambulancelicensenumber varchar(100) NULL,
	ambulancemake varchar(100) NULL,
	ambulancetype numeric(10) NULL,
	yearofmanufacture varchar(100) NULL,
	modelofvehicle varchar(100) NULL,
	dateofpurchase timestamp NULL,
	chassisnumber varchar(100) NULL,
	enginenumber varchar(100) NULL,
	typeoffuel numeric(10) NULL,
	mileage varchar(100) NULL,
	fuelthresholdlevel varchar(100) NULL,
	distanceminimalfuel varchar(100) NULL,
	policynumber varchar(100) NULL,
	policycompanyname varchar(100) NULL,
	policystartdate timestamp NULL,
	pccstartdate timestamp NULL,
	stretchercapacity numeric(10) NULL,
	bankid numeric(10) NULL,
	bankaddress varchar(100) NULL,
	amounttaken numeric(10) NULL,
	fromdate timestamp NULL,
	todate timestamp NULL,
	parkingplaceid numeric(10) NULL,
	isexternalambulance numeric(10) NULL,
	agencyid numeric(10) NULL,
	permitid numeric(10) NULL,
	ambulancestatus numeric(10) NULL,
	status numeric(10) NULL,
	createdby varchar(100) NULL,
	createddate timestamp NULL,
	ambulancetypeid numeric(20) NULL,
	insuranceamount numeric(20) NULL,
	premiumamount numeric(20) NULL,
	meterreading numeric(10) NULL,
	acnonac numeric(10) NULL,
	greentaxstartdate timestamp NULL,
	greentaxexpirydate timestamp NULL,
	ambcontactnumber numeric(20) NULL,
	pccexpirydate timestamp NULL,
	policyexpirydate timestamp NULL,
	ambulanceservice varchar(100) NULL
);