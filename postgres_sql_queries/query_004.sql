-- Query extracted from SSIS_SQLText
-- FlowSQLId: 4
-- FlowId: 4
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.328905

SELECT	client_id, 
		version, 
		daysapplicationexclusive, 
		milessearchzipcode, 
		name, 
		description, 
		city, 
		state, 
		country, 
		zipcode, 
		address, 
		inlineemail, 
		emailfulladr, 
		webgrading, 
		webapptimeout, 
		websave, 
		maxloginattempts, 
		lockoutduration, 
		failedloginresetinterval, 
		CONVERT(VARCHAR(19), datecreated, 120) as datecreated, 
		CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified, 
		createdby, 
		lastmodifiedby, 
		phone, 
		faxnumber, 
		customerid, 
		permission_id, 
		fein, 
		CONVERT(VARCHAR(19), legalholdstartdate, 120) as legalholdstartdate, 
		CONVERT(VARCHAR(19), legalholdenddate, 120) as legalholdenddate, 
		CONVERT(VARCHAR(19), deactivationdate, 120) as deactivationdate, 
		customertype, 
		<BATCHDATE> as ExtractDate, 
		<BATCHDATE> as BatchDate, 
		<SOURCESKEY> as SourceSkey 
	 FROM client 
	 WHERE (datelastmodified >= <FROMDATE_Q>)