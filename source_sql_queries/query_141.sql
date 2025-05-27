-- Query extracted from SSIS_SQLText
-- FlowSQLId: 141
-- FlowId: 141
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.345438

SELECT		/*+first_rows cursor_sharing_exact INDEX(e, FBI_E_DATELASTMODIFIED)*/
				education_id, 
				version, 
				schoolname, 
				city, 
				state, 
				country, 
				CONVERT(VARCHAR(19), startdate, 120) as startdate,
				CONVERT(VARCHAR(19), enddate, 120) as enddate,
				CONVERT(VARCHAR(19), graduationdate, 120) as graduationdate,
				didgraduate, 
				degree, 
				major, 
				minor, 
				gpa, 
				description, 
				previousname, 
				yearscompleted, 
				schooltype, 
				CONVERT(VARCHAR(19), datecreated, 120) as datecreated, 
				CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified,  
				createdby, 
				lastmodifiedby, 
				document_id, 
				customfield_id, 
				savedforlater, 
				needsverification,
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM education e
	 WHERE (datelastmodified >= <FROMDATE_Q>)