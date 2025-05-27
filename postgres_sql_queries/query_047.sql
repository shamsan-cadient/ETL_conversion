-- Query extracted from SSIS_SQLText
-- FlowSQLId: 47
-- FlowId: 47
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.333444

SELECT		postingdestination_id, 
				version, 
				name, 
				destinationtype, 
				application_id, 
				TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated, 
			    TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified,
				createdby, 
				lastmodifiedby, 
				guuid, 
				externalidentifier,
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM postingdestination 
	 WHERE (datelastmodified >= <FROMDATE_Q>)