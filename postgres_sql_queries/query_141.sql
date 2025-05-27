-- Query extracted from SSIS_SQLText
-- FlowSQLId: 141
-- FlowId: 141
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.345438

SELECT		education_id, 
				version, 
				schoolname, 
				city, 
				state, 
				country, 
				TO_CHAR(startdate, 'YYYY-MM-DD HH24:MI:SS') as startdate,
				TO_CHAR(enddate, 'YYYY-MM-DD HH24:MI:SS') as enddate,
				TO_CHAR(graduationdate, 'YYYY-MM-DD HH24:MI:SS') as graduationdate,
				didgraduate::integer, 
				degree, 
				major, 
				minor, 
				gpa, 
				description, 
				previousname, 
				yearscompleted, 
				schooltype, 
				TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated, 
				TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified,  
				createdby, 
				lastmodifiedby, 
				document_id, 
				customfield_id, 
				savedforlater::integer, 
				needsverification::integer,
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM education e
	 WHERE (datelastmodified >= <FROMDATE_Q>)