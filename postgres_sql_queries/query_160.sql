-- Query extracted from SSIS_SQLText
-- FlowSQLId: 160
-- FlowId: 160
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.348352

SELECT
			phasescore_id
			,version
			,band
			,scoreband
			,scorestatus
			,jobbid_id
			,TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated 
			,TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified 
			,createdby
			,lastmodifiedby
			,<BATCHDATE> AS ExtractDate
			,<BATCHDATE> AS BatchDate
			,<SOURCESKEY> AS SourceSkey
		FROM phasescore p
		WHERE (p.datelastmodified >= <FROMDATE_Q>)