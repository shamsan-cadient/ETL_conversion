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
				TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as DATECREATED, 
				TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as DATELASTMODIFIED,
				CREATEDBY,
				LASTMODIFIEDBY,
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM CLIENTINTEGRATION 
	 WHERE (DATELASTMODIFIED >= <FROMDATE_Q>)