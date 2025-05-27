-- Query extracted from SSIS_SQLText
-- FlowSQLId: 153
-- FlowId: 153
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.347437

SELECT
			clientext_id
			,version
			,ext_type
			,client_id
			,TO_CHAR(datecreated, ''YYYY-MM-DD HH24:MI:SS'') as datecreated 
		    ,TO_CHAR(datelastmodified, ''YYYY-MM-DD HH24:MI:SS'') as datelastmodified
			,createdby
			,lastmodifiedby
			,<BATCHDATE> AS ExtractDate
			,<BATCHDATE> AS BatchDate
			,<SOURCESKEY> AS SourceSkey
		FROM dbo.clientext
		WHERE
			(datelastmodified >= <FROMDATE_Q>)