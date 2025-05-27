-- Query extracted from SSIS_SQLText
-- FlowSQLId: 179
-- FlowId: 179
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.350977

SELECT		CLIENTINTEGRATION_ID,
				VERSION,
				CLIENTEXT_ID,
				VENDORINTEGRATION_ID,
				CONVERT(VARCHAR(19), datecreated, 120) as DATECREATED, 
				CONVERT(VARCHAR(19), datelastmodified, 120) as DATELASTMODIFIED,
				CREATEDBY,
				LASTMODIFIEDBY,
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM CLIENTINTEGRATION 
	 WHERE (DATELASTMODIFIED >= <FROMDATE_Q>)