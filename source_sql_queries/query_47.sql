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
				CONVERT(VARCHAR(19), datecreated, 120) as datecreated, 
			    CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified,
				createdby, 
				lastmodifiedby, 
				guuid, 
				externalidentifier,
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM postingdestination 
	 WHERE (datelastmodified >= <FROMDATE_Q>)