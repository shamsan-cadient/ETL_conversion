-- Query extracted from SSIS_SQLText
-- FlowSQLId: 170
-- FlowId: 170
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.349782

SELECT
			datameaning_id
			,name
			,description
			,category
			,isreportable::integer
			,label_id
			,client_id
			,version
			,TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated 
			,createdby
			,TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified
			,lastmodifiedby
			,<BATCHDATE> AS ExtractDate
			,<BATCHDATE> AS BatchDate
			,<SOURCESKEY> AS SourceSkey
		FROM datameaning
		WHERE
			(datelastmodified >= <FROMDATE_Q>)