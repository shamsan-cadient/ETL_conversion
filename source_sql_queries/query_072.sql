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
				isactive, 
				isexternal, 
				NULL AS generatedpassword, 
				NULL AS passwordhint, 
				CONVERT(VARCHAR(19), datecreated, 120) as datecreated,  
			    CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified, 
				createdby, 
				lastmodifiedby, 
				clientid, 
				CONVERT(VARCHAR(19), datelockoutends, 120) as datelockoutends, 
				CONVERT(VARCHAR(19), datelastloginattempt, 120) as datelastloginattempt, 
				CONVERT(VARCHAR(19), passwordchangedate, 120) as passwordchangedate, 
				failedloginattempts, 
				guuid, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM userinfo 
	 WHERE (datelastmodified >= <FROMDATE_Q>)