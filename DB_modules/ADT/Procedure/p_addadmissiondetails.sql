--call adt.P_ADDADMISSIONDETAILS('<?xml version="1.0" encoding="utf-16"?><AdmissionRequest xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">  <Admission WardCommunication="" HouseKeepingCommunication="" Upgradation="0" Upselling="0" Downgradation="0" ReasonForUPG="" CautionCheck="0" Reason="" AllottedBedCategoryID="416" controlName="" Bed_Code="" Alloted_Ward_Type="" Alloted_Room_Type="" Alloted_Bed_Type="" Booking_Date="01-Jan-1900" Referral_Doc_Type="" Referral_Doc="" Referral_Type="0" Referal_Entity="0" Billable_Tariff="" HFAdmissionTab="" CorporateCode="" EmpNo="" MLCase="0" PaymentMode="Cash" Remarks="" Diabetic="0" EligibleTariffCategoryID="0" RequestedBedCategoryID="426" SecondChoiceRequestedBedCategoryID="0" BillableTariffCategoryID="416" BedStatusID="0" BedBookingNumber="" ExpectedDurationToStay="0" NeedInterpreter="0" AdmittingDoctor="717176" FoodAndBeveragesPreference="" GeneralPreference="" HouseKeepingPreference="" Language="0" Equipment="0" RequestedPerson="" AddressOfRequester="" RequesterContactNumber="" InPatientNo="" AdmissionNoteAvailable="1" AuthorizationRequired="0" BookID="0" ERN="" Address="" AdmissionNoteType="PaperBased" AdmissionDeposit="" PatientType="1" BedID="6019" CancellationDate="01-Jan-1900" ContactNo="91-3456765421" Country="" DateOfBirth="13-Nov-2022 21:45:53" DoubleOccupancy="" District="" DoctorsAddress="" ExpiryDate="01-Jan-1900" Email="" FirstName="" Gender="0" IssuePlace="" IssueDate="01-Jan-1900" AnySpecificPreference="" AdmissionType="1" DateOfAdmission="13-Nov-2022 21:41:46" AttendantName="test" AttendantAddress="" RelationShipWithPatient="151" NeedAssistant="0" Assistant="" NeedEquipment="0" NeedReligiousPriest="0" NameOfThePriest="" ClinicalTrialPatient="0" ClinicalTrialCode="0" LastName="" Locality="" MaritalStatus="" ModificationDate="01-Jan-1900" NeedForDoubleOccupancy="0" PRN="" PatientContactNo="" Preferences="" PassportNo="" PriestNo="" ReasonForAdmission="test" ReferredDoctor="0" MiddleName="" ReasonForCancellation="" ReasonForModification="" RequestedBedType="0" Street="" State="" UHID="ANM1.0000837019" LoginID="921186" LocationID="10551" ConvertedFrom="" CounterNo="" ShiftNo="" NoOfRequests="0" IPGuide="0" PatientVenerable="0" TypeOfTransport="0" AdmissionNo="0" Status="0" ActiveStatus="0" AmbulanceRequestId="0" LocationTransfer="0" OldLocationId="0" OldIPNO="" DayCare="7" FileName="" FilePath="" DocFileName="" OtherHospitalID="0" SecondAdmittingDoctor="0" PACStatus="5" DaycareType="0" SurgicalPackage="0" SurgicalPackCategeroy="0" AdmissionFor="492" FreePatient="0" Unit="0" IsDualBill="0" UnitHead="0">    <TransactionID>0</TransactionID>    <PolicyNo />    <Allergies />    <Habits />    <VisitInfo />    <Services />  </Admission>  <ActionRequest>    <Target />    <Identifier>5db3b958-a7ae-449f-97e2-863887e94987</Identifier>    <LoginID>Apollo</LoginID>    <Action>ADDIPADMISSION</Action>  </ActionRequest></AdmissionRequest>',null,'921186');


CREATE OR replace PROCEDURE adt.p_addadmissiondetails( iclob_ipadmissiondetails text,
on_inpatientid INOUT NUMERIC,
iv_loginid text )AS $body$ 
DECLARE v_inpatientid NUMERIC(20) ;

v_bookid NUMERIC(20) ;

v_admissiondetails xml ;

v_bedtransactionid NUMERIC(20) ;

ln_bedid NUMERIC ;

v_attendentid NUMERIC(20) ;

lv_uhid varchar(104) ;

lv_attendantname adt.attendantdetails.attendentname%TYPE ;

lv_contactno adt.attendantdetails.phoneno%TYPE ;

lv_email adt.attendantdetails.emailid%TYPE ;

ln_relationshipwithpatient adt.attendantdetails.relationshipwithpatient%TYPE ;

lv_attendantaddress adt.attendantdetails.attendentaddress%TYPE ;

lv_wardcommunication adt.attendantdetails.communicatedwardnurse%TYPE ;

lv_housekeepingcommunication adt.attendantdetails.communicatedhousekeeping%TYPE ;

v_admissionnumber NUMERIC(20) ;

v_admissionnumberfromxml NUMERIC(20) ;

v_locationid NUMERIC(20) ;
BEGIN
	--SET search_path TO adt ;
raise notice 'start';
v_admissiondetails := xml(iclob_ipadmissiondetails) ;

v_inpatientid := nextval('adt.s_inpatientmaster') ;

v_attendentid := nextval('adt.s_attendentid') ;
raise notice 'start47';
SELECT
	/*(
	SELECT
		UNNEST( xpath( 'AdmissionRequest/Admission/@BedID',
		v_admissiondetails ) ) )::text::numeric,*/
		(case when (select unnest(xpath('AdmissionRequest/Admission/@BedID',
		v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@BedID',
		v_admissiondetails )))::text::numeric end),
	/*(
	SELECT
		UNNEST( xpath( 'AdmissionRequest/Admission/@AttendantName',
		v_admissiondetails ) ) )::text,*/
		(case when (select unnest(xpath('AdmissionRequest/Admission/@AttendantName',
		v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@AttendantName',
		v_admissiondetails )))::text end),
	/*(
	SELECT
		UNNEST( xpath( 'AdmissionRequest/Admission/@ContactNo',
		v_admissiondetails ) ) )::text,*/
		(case when (select unnest(xpath('AdmissionRequest/Admission/@ContactNo',
		v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@ContactNo',
		v_admissiondetails )))::text end),
	/*(
	SELECT
		UNNEST( xpath( 'AdmissionRequest/Admission/@Email',
		v_admissiondetails ) ) )::text,
	(
	SELECT
		UNNEST( xpath( 'AdmissionRequest/Admission/@RelationShipWithPatient',
		v_admissiondetails ) ) )::text::numeric,
	(
	SELECT
		UNNEST( xpath( 'AdmissionRequest/Admission/@AttendantAddress',
		v_admissiondetails ) ) )::text,
	(
	SELECT
		UNNEST( xpath( 'AdmissionRequest/Admission/@WardCommunication',
		v_admissiondetails ) ) )::text,
	(
	SELECT
		UNNEST( xpath( 'AdmissionRequest/Admission/@HouseKeepingCommunication',
		v_admissiondetails ) ) )::text,
	(
	SELECT
		UNNEST( xpath( 'AdmissionRequest/Admission/@UHID',
		v_admissiondetails ) ) )::text,
	(
	SELECT
		UNNEST( xpath( 'AdmissionRequest/Admission/@AdmissionNo',
		v_admissiondetails ) ) )::text::numeric,
	(
	SELECT
		UNNEST( xpath( 'AdmissionRequest/Admission/@LocationID',
		v_admissiondetails ) )::text::numeric
)*/
(case when (select unnest(xpath('AdmissionRequest/Admission/@Email',
		v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@Email',
		v_admissiondetails )))::text end)
  ,
	 (case when (select unnest(xpath('AdmissionRequest/Admission/@RelationShipWithPatient',
		v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@RelationShipWithPatient',
		v_admissiondetails )))::text::numeric end)
 ,
	 (case when (select unnest(xpath('AdmissionRequest/Admission/@AttendantAddress',
		v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@AttendantAddress',
		v_admissiondetails )))::text end)
  ,
	 (case when (select unnest(xpath('AdmissionRequest/Admission/@WardCommunication',
		v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@WardCommunication',
		v_admissiondetails )))::text end)
  ,
	 (case when (select unnest(xpath('AdmissionRequest/Admission/@HouseKeepingCommunication',
		v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@HouseKeepingCommunication',
		v_admissiondetails )))::text end)
  ,
	 (case when (select unnest(xpath('AdmissionRequest/Admission/@UHID',
		v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@UHID',
		v_admissiondetails )))::text end)
  ,
	 (case when (select unnest(xpath('AdmissionRequest/Admission/@AdmissionNo',
		v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@AdmissionNo',
		v_admissiondetails )))::text::numeric end)
 ,
	 (case when (select unnest(xpath('AdmissionRequest/Admission/@LocationID',
		v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@LocationID',
		v_admissiondetails )))::text::numeric end)

INTO
	strict ln_bedid,
	lv_attendantname,
	lv_contactno,
	lv_email,
	ln_relationshipwithpatient,
	lv_attendantaddress,
	lv_wardcommunication,
	lv_housekeepingcommunication,
	lv_uhid,
	v_admissionnumberfromxml,
	v_locationid ;
	raise notice'%ln_bedid,%lv_attendantname,%lv_contactno,%lv_email,%ln_relationshipwithpatient,%lv_attendantaddress,%lv_wardcommunication,%lv_housekeepingcommunication,%lv_uhid,%v_admissionnumberfromxml,%v_locationid',ln_bedid,lv_attendantname,lv_contactno,lv_email,ln_relationshipwithpatient,lv_attendantaddress,lv_wardcommunication,lv_housekeepingcommunication,lv_uhid,v_admissionnumberfromxml,v_locationid;
raise notice 'start105';
IF v_admissionnumberfromxml > 0 THEN

raise notice 'if1 start';
v_admissionnumber := v_admissionnumberfromxml ;
raise notice'%v_admissionnumber',v_admissionnumber;
raise notice 'if1 start109';
ELSE
raise notice 'if1 else start';
SELECT
	ad.admissionno
INTO
	strict v_admissionnumber
FROM
	wards.admissiondetails ad
WHERE
	ad.admissionstatus = 2
	AND ad.status = 1
	AND ad.locationid = v_locationid::text
	AND ad.uhid = lv_uhid
LIMIT 1 ;
raise notice 'if1 end';
END IF ;

IF v_admissionnumber > 0 THEN

raise notice 'if2 start';
v_inpatientid := nextval('adt.s_inpatientmaster') ;

v_attendentid := nextval('adt.s_attendentid') ;
raise notice 'if2 start132';
IF ln_bedid = 0 THEN 

raise notice 'if2 if1 start';
ln_bedid := NULL ;
raise notice 'if2 if1 end';
END IF ;
raise notice 'if2 start138';
raise notice '%v_inpatientid',v_inpatientid;
INSERT
	INTO
	adt.inpatientmaster ( inpatientid,
	bookid,
	uhid,
	prn,
	ern,
	firstname,
	middlename,
	lastname,
	dateofbirth,
	dip,
	maritalstatus,
	admissionnoteavailable,
	admissionnotetype,
	patienttype,
	authorizationrequired,
	reasonforadmission,
	requestedbedtype,
	dateofadmission,
	expecteddurationtostay,
	bedid,
	advancepaymentneeded,
	street,
	locality,
	district,
	state,
	country,
	patientcontactno,
	admissiontype,
	paymentmode,
	allergies,
	policyno,
	empno,
	corporatecode,
	habits,
	diabetic,
	eligibletariffcategoryid,
	foodandbeveragespreference,
	generalpreference,
	housekeepingpreference,
	referreddoctor,
	doctorsaddress,
	attendantname,
	attendantaddress,
	contactno,
	relationshipwithpatient,
	email,
	passportno,
	issueplace,
	issuedate,
	expirydate,
	needassistant,
	needequipment,
	equipment,
	needescort,
	escort,
	needtransportation,
	transportation,
	doubleoccupancy,
	needfordoubleoccupancy,
	admissiondeposit,
	needreligiouspriest,
	nameofthepriest,
	address,
	priestno,
	admittingdoctor,
	primaryphysician,
	needinterpreter,
	LANGUAGE,
	clinicaltrialpatient,
	clinicaltrialcode,
	modificationdate,
	reasonformodification,
	cancellationdate,
	reasonforcancellation,
	mlcase,
	status,
	remarks,
	createdby,
	updateddate,
	updatedby,
	locationid,
	convertedfrom,
	counterno,
	shiftno,
	ipguide,
	patientvenerable,
	typeoftransport,
	admissionno,
	ambulancerequestid,
	activestatus,
	referaltype,
	doctortype,
	referalentity,
	locationtransfer,
	oldlocation,
	oldipno,
	daycare,
	filename,
	docfilename,
	reason,
	cautioncheck,
	specialnotes,
	upgradation,
	upselling,
	downgradation,
	remarksupg,
	wardnurse,
	housekeeping,
	secondadmittingdoctor,
	pacstatus,
	surgicalpackage,
	surgicalpackcatageroy,
	admissionfor,
	freepatient,
	isdualbill,
	unit,
	unithead )
VALUES( v_inpatientid,
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@BookID',
	v_admissiondetails ) ) )::text::numeric,*/
	 (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@BookID',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@BookID',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@UHID',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@PRN',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@ERN',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@MiddleName',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@MiddleName',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@LastName',
	v_admissiondetails ) ) )::text,*/
	
	(case when (select unnest(xpath('AdmissionRequest/Admission/@UHID',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@UHID',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@PRN',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@PRN',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@ERN',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@ERN',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@MiddleName',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@MiddleName',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@MiddleName',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@MiddleName',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@LastName',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@LastName',
	v_admissiondetails )))::text end)
  ,
to_date( /*(
SELECT
	UNNEST( xpath( '/AdmissionRequest/Admission/@DateOfBirth',
	v_admissiondetails ) ) )::text,*/
	(case when (SELECT UNNEST( xpath( '/AdmissionRequest/Admission/@DateOfBirth',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( '/AdmissionRequest/Admission/@DateOfBirth',
	v_admissiondetails)))::text end ),
'DD-MON-YYYY HH24:MI:SS' ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@Gender',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@Gender',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@Gender',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@MaritalStatus',
	v_admissiondetails ) ) )::text,*/
	(case when (select unnest(xpath('AdmissionRequest/Admission/@MaritalStatus',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@MaritalStatus',
	v_admissiondetails )))::text end)
  ,
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@AdmissionNoteAvailable',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@AdmissionNoteAvailable',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@AdmissionNoteAvailable',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@AdmissionNoteType',
	v_admissiondetails ) ) )::text,*/
	(case when (select unnest(xpath('AdmissionRequest/Admission/@AdmissionNoteType',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@AdmissionNoteType',
	v_admissiondetails )))::text end)
  ,
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@PatientType',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@PatientType',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@PatientType',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@AuthorizationRequired',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@AuthorizationRequired',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@AuthorizationRequired',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@ReasonForAdmission',
	v_admissiondetails ) ) )::text,*/
	(case when (select unnest(xpath('AdmissionRequest/Admission/@ReasonForAdmission',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@ReasonForAdmission',
	v_admissiondetails )))::text end)
  ,
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@RequestedBedType',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@RequestedBedType',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@RequestedBedType',
	v_admissiondetails)))::text::numeric end ),
clock_timestamp( ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@ExpectedDurationToStay',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@ExpectedDurationToStay',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@ExpectedDurationToStay',
	v_admissiondetails)))::text::numeric end ),
ln_bedid,
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@AdvancePaymentNeeded',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@AdvancePaymentNeeded',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@AdvancePaymentNeeded',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@Street',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@Locality',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@District',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@State',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@Country',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@PatientContactNo',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@AdmissionType',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@PaymentMode',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/Allergies',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/PolicyNo',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@EmpNo',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@CorporateCode',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/Habits',
	v_admissiondetails ) ) )::text,*/
	
	(case when (select unnest(xpath('AdmissionRequest/Admission/@Street',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@Street',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@Locality',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@Locality',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@District',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@District',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@State',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@State',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@Country',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@Country',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@PatientContactNo',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@PatientContactNo',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@AdmissionType',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@AdmissionType',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@PaymentMode',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@PaymentMode',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/Allergies',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/Allergies',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/PolicyNo',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/PolicyNo',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@EmpNo',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@EmpNo',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@CorporateCode',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@CorporateCode',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/Habits',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/Habits',
	v_admissiondetails )))::text end)
  ,
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@Diabetic',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@Diabetic',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@Diabetic',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@EligibleTariffCategoryID',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@EligibleTariffCategoryID',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@EligibleTariffCategoryID',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@FoodAndBeveragesPreference',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@GeneralPreference',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@HouseKeepingPreference',
	v_admissiondetails ) ) )::text,*/
	(case when (select unnest(xpath('AdmissionRequest/Admission/@FoodAndBeveragesPreference',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@FoodAndBeveragesPreference',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@GeneralPreference',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@GeneralPreference',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@HouseKeepingPreference',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@HouseKeepingPreference',
	v_admissiondetails )))::text end)
  ,
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@ReferredDoctor',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@ReferredDoctor',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@ReferredDoctor',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@DoctorsAddress',
	v_admissiondetails ) ) )::text,*/
	(case when (select unnest(xpath('AdmissionRequest/Admission/@DoctorsAddress',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@DoctorsAddress',
	v_admissiondetails )))::text end)
  ,
lv_attendantname,
lv_attendantaddress,
lv_contactno,
ln_relationshipwithpatient,
lv_email,
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@PassportNo',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@IssuePlace',
	v_admissiondetails ) ) )::text,*/
	(case when (select unnest(xpath('AdmissionRequest/Admission/@PassportNo',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@PassportNo',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@IssuePlace',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@IssuePlace',
	v_admissiondetails )))::text end)
  ,
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@IssueDate',
	v_admissiondetails ) ) )::text::timestamp without time zone,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@IssueDate',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@IssueDate',
	v_admissiondetails)))::text::timestamp without time zone end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@ExpiryDate',
	v_admissiondetails ) ) )::text::timestamp without time zone,*/
	   (case when (SELECT UNNEST( xpath('AdmissionRequest/Admission/@ExpiryDate',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@ExpiryDate',
	v_admissiondetails)))::text::timestamp without time zone end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@NeedAssistant',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@NeedAssistant',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@NeedAssistant',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@NeedEquipment',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@NeedEquipment',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@NeedEquipment',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@Equipment',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@Equipment',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@Equipment',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@NeedEscort',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@NeedEscort',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@NeedEscort',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@Escort',
	v_admissiondetails ) ) ),*/
	(case when (select unnest(xpath('AdmissionRequest/Admission/@Escort',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@Escort',
	v_admissiondetails )))::text end)
  ,
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@NeedTransportation',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@NeedTransportation',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@NeedTransportation',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@Transportation',
	v_admissiondetails ) ) )::text,*/
	(case when (select unnest(xpath('AdmissionRequest/Admission/@Transportation',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@Transportation',
	v_admissiondetails )))::text end)
  ,
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@DoubleOccupancy',
	v_admissiondetails ) ) )::text::numeric,*/
	    (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@DoubleOccupancy',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@DoubleOccupancy',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@NeedForDoubleOccupancy',
	v_admissiondetails ) ) )::text::numeric,*/
	    (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@NeedForDoubleOccupancy',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@NeedForDoubleOccupancy',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@AdmissionDeposit',
	v_admissiondetails ) ) )::text,*/
	(case when (select unnest(xpath('AdmissionRequest/Admission/@AdmissionDeposit',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@AdmissionDeposit',
	v_admissiondetails )))::text end)
  ,
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@NeedReligiousPriest',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@NeedReligiousPriest',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@NeedReligiousPriest',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@NameOfThePriest',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@Address',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@PriestNo',
	v_admissiondetails ) ) )::text,*/
	(case when (select unnest(xpath('AdmissionRequest/Admission/@NameOfThePriest',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@NameOfThePriest',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@Address',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@Address',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@PriestNo',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@PriestNo',
	v_admissiondetails )))::text end)
  ,
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@AdmittingDoctor',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@AdmittingDoctor',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@AdmittingDoctor',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@PrimaryPhysician',
	v_admissiondetails ) ) )::text,*/
	(case when (select unnest(xpath('AdmissionRequest/Admission/@PrimaryPhysician',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@PrimaryPhysician',
	v_admissiondetails )))::text end)
  ,
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@NeedInterpreter',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@NeedInterpreter',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@NeedInterpreter',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@Language',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@Language',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@Language',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@ClinicalTrialPatient',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@ClinicalTrialPatient',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@ClinicalTrialPatient',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@ClinicalTrialCode',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@ClinicalTrialCode',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@ClinicalTrialCode',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@ModificationDate',
	v_admissiondetails ) ) )::text::timestamp without time zone,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@ModificationDate',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@ModificationDate',
	v_admissiondetails)))::text::timestamp without time zone end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@ReasonForModification',
	v_admissiondetails ) ) )::text,*/
	(case when (select unnest(xpath('AdmissionRequest/Admission/@ReasonForModification',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@ReasonForModification',
	v_admissiondetails )))::text end)
  ,
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@CancellationDate',
	v_admissiondetails ) ) )::text::timestamp without time zone,*/
	    (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@CancellationDate',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@CancellationDate',
	v_admissiondetails)))::text::timestamp without time zone end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@ReasonForCancellation',
	v_admissiondetails ) ) )::text,*/
	(case when (select unnest(xpath('AdmissionRequest/Admission/@ReasonForCancellation',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@ReasonForCancellation',
	v_admissiondetails )))::text end)
  ,
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@MLCase',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@MLCase',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@MLCase',
	v_admissiondetails)))::text::numeric end ),
1,
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@Remarks',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@LoginID',
	v_admissiondetails ) ) )::text,*/
	(case when (select unnest(xpath('AdmissionRequest/Admission/@Remarks',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@Remarks',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@LoginID',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@LoginID',
	v_admissiondetails )))::text end)
  ,
NULL,
NULL,
v_locationid,
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@ConvertedFrom',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@CounterNo',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@ShiftNo',
	v_admissiondetails ) ) )::text,*/
	(case when (select unnest(xpath('AdmissionRequest/Admission/@ConvertedFrom',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@ConvertedFrom',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@CounterNo',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@CounterNo',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@ShiftNo',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@ShiftNo',
	v_admissiondetails )))::text end)
  ,
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@IPGuide',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@IPGuide',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@IPGuide',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@PatientVenerable',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@PatientVenerable',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@PatientVenerable',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@TypeOfTransport',
	v_admissiondetails ) ) )::text::numeric,*/
	    (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@TypeOfTransport',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@TypeOfTransport',
	v_admissiondetails)))::text::numeric end ),
v_admissionnumber,
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@AmbulanceRequestId',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@AmbulanceRequestId',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@AmbulanceRequestId',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@ActiveStatus',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@ActiveStatus',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@ActiveStatus',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@Referral_Type',
	v_admissiondetails ) ) )::text::numeric,*/
	    (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@Referral_Type',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@Referral_Type',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@Referral_Doc_Type',
	v_admissiondetails ) ) )::text,*/
	(case when (select unnest(xpath('AdmissionRequest/Admission/@Referral_Doc_Type',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@Referral_Doc_Type',
	v_admissiondetails )))::text end)
  ,
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@Referal_Entity',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@Referal_Entity',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@Referal_Entity',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@LocationTransfer',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@LocationTransfer',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@LocationTransfer',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@OldLocationId',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@OldIPNO',
	v_admissiondetails ) ) )::text,*/
	(case when (select unnest(xpath('AdmissionRequest/Admission/@OldLocationId',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@OldLocationId',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@OldIPNO',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@OldIPNO',
	v_admissiondetails )))::text end)
  ,
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@DayCare',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@DayCare',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@DayCare',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@FileName',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@DocFileName',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@Reason',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@CautionCheck',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@FirstName',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@Upgradation',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@Upselling',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@Downgradation',
	v_admissiondetails ) ) )::text,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@RemarksUPG',
	v_admissiondetails ) ) )::text,*/
	(case when (select unnest(xpath('AdmissionRequest/Admission/@FileName',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@FileName',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@DocFileName',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@DocFileName',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@Reason',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@Reason',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@CautionCheck',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@CautionCheck',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@FirstName',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@FirstName',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@Upgradation',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@Upgradation',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@Upselling',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@Upselling',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@Downgradation',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@Downgradation',
	v_admissiondetails )))::text end)
  ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@RemarksUPG',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@RemarksUPG',
	v_admissiondetails )))::text end)
  ,
lv_wardcommunication,
lv_housekeepingcommunication,
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@SecondAdmittingDoctor',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@SecondAdmittingDoctor',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@SecondAdmittingDoctor',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@PACStatus',
	v_admissiondetails ) ) )::text::numeric,*/
	   	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@PACStatus',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@PACStatus',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@SurgicalPackage',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@SurgicalPackage',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@SurgicalPackage',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@SurgicalPackCategeroy',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@SurgicalPackCategeroy',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@SurgicalPackCategeroy',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@AdmissionFor',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@AdmissionFor',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@AdmissionFor',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@FreePatient',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@FreePatient',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@FreePatient',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@IsDualBill',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@IsDualBill',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@IsDualBill',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@Unit',
	v_admissiondetails ) ) )::text::numeric,*/
	   (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@Unit',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@Unit',
	v_admissiondetails)))::text::numeric end ),
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@UnitHead',
	v_admissiondetails ) ) )::text::numeric );*/
	    (case when (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@UnitHead',
	v_admissiondetails)))::text = '' then null
else (SELECT UNNEST( xpath( 'AdmissionRequest/Admission/@UnitHead',
	v_admissiondetails)))::text::numeric end ));
raise notice 'if2 start682';
INSERT
	INTO
	adt.attendantdetails( attendentid,
	inaptientid,
	attendentname,
	phoneno,
	emailid,
	relationshipwithpatient,
	attendentaddress,
	communicatedwardnurse,
	communicatedhousekeeping,
	status )
VALUES( v_attendentid,
v_inpatientid,
lv_attendantname,
lv_contactno,
lv_email,
ln_relationshipwithpatient,
lv_attendantaddress,
lv_wardcommunication,
lv_housekeepingcommunication,
1 ) ;
raise notice 'if2 start705';
IF ln_bedid IS NOT NULL THEN

raise notice 'if2 if2 start';
BEGIN
raise notice 'if2 if2 start709';
	v_bedtransactionid := nextval('adt.s_bedadmission') ;
raise notice 'if2 if2 start711';
INSERT
	INTO
	adt.bedadmission( bedtransactionid,
	inpatientid,
	bedid,
	startdate,
	enddate,
	status,
	currentlyoccupied,
	requestedbedcategoryid,
	allottedbedcategoryid,
	billabletariffcategoryid,
	updateddate,
	updatedby )
VALUES( v_bedtransactionid,
v_inpatientid,
ln_bedid,
clock_timestamp( ),
NULL,
1,
1,
/*(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@RequestedBedCategoryID',
	v_admissiondetails ) ) )::text::numeric,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@AllottedBedCategoryID',
	v_admissiondetails ) ) )::text::numeric,
(
SELECT
	UNNEST( xpath( 'AdmissionRequest/Admission/@BillableTariffCategoryID',
	v_admissiondetails ) ) )::text::numeric,*/
	(case when (select unnest(xpath('AdmissionRequest/Admission/@RequestedBedCategoryID',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@RequestedBedCategoryID',
	v_admissiondetails )))::text::numeric end)
 ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@AllottedBedCategoryID',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@AllottedBedCategoryID',
	v_admissiondetails )))::text::numeric end)
 ,
 (case when (select unnest(xpath('AdmissionRequest/Admission/@BillableTariffCategoryID',
	v_admissiondetails )))::text='' then null 
else (select unnest(xpath('AdmissionRequest/Admission/@BillableTariffCategoryID',
	v_admissiondetails )))::text::numeric end)
 ,
clock_timestamp( ),
iv_loginid ) ;
END ;
raise notice 'if2 if2 end';
END IF ;

IF ln_bedid IS NOT NULL THEN

raise notice 'if2 if3 start';
UPDATE
	adt.bedmaster
SET
	bedstatusid = 5
WHERE
	bedid = ln_bedid ;
	raise notice 'if2 if3 start759';
ELSE
raise notice 'if2 if3 else start';
UPDATE
	adt.bedmaster bm
SET
	--bm.bedstatusid = 5
	bedstatusid = 5
WHERE
	bm.bedid IN(
	SELECT
		bedid
	FROM
		adt.inpatientmaster ipm1
	WHERE
		ipm1.inpatientid = v_inpatientid ) ;
		raise notice 'if2 if3 end';
END IF ;

/*SELECT
	UNNEST( xpath( '( AdmissionRequest/Admission/@BookID )[1]',
	trim( BOTH v_admissiondetails ) )
	INTO
		v_bookid ;*/
v_bookid := TRIM (/*(SELECT UNNEST( xpath( '( AdmissionRequest/Admission/@BookID )[1]', v_admissiondetails ) ))::text*/
(case when (select unnest(xpath('(AdmissionRequest/Admission/@BookID )[1]', v_admissiondetails )))::text='' then null 
else (select unnest(xpath('(AdmissionRequest/Admission/@BookID )[1]', v_admissiondetails )))::text end));
--INTO
--v_bookid;
raise notice 'if2 785';
UPDATE
	adt.bookingdetails
SET
	status = 2
WHERE
	bookid = v_bookid ;
	raise notice 'if2 792';
UPDATE
	adt.bedstatus b
SET
	--b.status = 0
	status = 0
WHERE
	b.uhid = lv_uhid ;

on_inpatientid := v_inpatientid ;
raise notice 'if2 end';
END IF ;
END ;

$body$ LANGUAGE plpgsql ;
