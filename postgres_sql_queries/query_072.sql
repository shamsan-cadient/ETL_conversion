-- Query extracted from SSIS_SQLText
-- FlowSQLId: 72
-- FlowId: 72
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.336015

SELECT		userinfo_id, 
				version, 
				username, 
				isactive::integer, 
				isexternal::integer, 
				NULL AS generatedpassword, 
				NULL AS passwordhint, 
				TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated,  
			    TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified, 
				createdby, 
				lastmodifiedby, 
				clientid, 
				TO_CHAR(datelockoutends, 'YYYY-MM-DD HH24:MI:SS') as datelockoutends, 
				TO_CHAR(datelastloginattempt, 'YYYY-MM-DD HH24:MI:SS') as datelastloginattempt, 
				TO_CHAR(passwordchangedate, 'YYYY-MM-DD HH24:MI:SS') as passwordchangedate, 
				failedloginattempts, 
				guuid, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM userinfo 
	 WHERE (datelastmodified >= <FROMDATE_Q>)