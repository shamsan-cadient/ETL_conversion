-- Query extracted from SSIS_SQLText
-- FlowSQLId: 20
-- FlowId: 20
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.330584

SELECT		jobopening_id, 
				version, 
				jobcode, 
				jobtype, 
				jobcategory, 
				job_id, 
				clientid, 
				CONVERT(VARCHAR(19), datecreated, 120) as datecreated, 
			    CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified,  
				createdby, 
				lastmodifiedby, 
				guuid, 
				positionkey_count, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM jobopening 
	 WHERE (datelastmodified >= <FROMDATE_Q>)