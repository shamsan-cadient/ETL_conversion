-- Query extracted from SSIS_SQLText
-- FlowSQLId: 138
-- FlowId: 138
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.344953

SELECT		signeddocumentmanagerinfo_id, 
				version, 
				jobbid_id, 
				fullname, 
				managertitle, 
				CONVERT(VARCHAR(19), datecreated, 120) as datecreated,  
				CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified,
				createdby, 
				lastmodifiedby, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM signeddocumentmanagerinfo 
	 WHERE (datelastmodified >= <FROMDATE_Q>)