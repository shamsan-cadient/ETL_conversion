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
			,CONVERT(VARCHAR(19), datecreated, 120) as datecreated 
		    ,CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified
			,createdby
			,lastmodifiedby
			,<BATCHDATE> AS ExtractDate
			,<BATCHDATE> AS BatchDate
			,<SOURCESKEY> AS SourceSkey
		FROM clientext
		WHERE
			(datelastmodified >= <FROMDATE_Q>)