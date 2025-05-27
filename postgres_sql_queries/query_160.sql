-- Query extracted from SSIS_SQLText
-- FlowSQLId: 160
-- FlowId: 160
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.348352

SELECT		/*+first_rows cursor_sharing_exact INDEX(p, FBI_PS1_DATELASTMODIFIED)*/
			phasescore_id
			,version
			,band
			,scoreband
			,scorestatus
			,jobbid_id
			,CONVERT(VARCHAR(19), datecreated, 120) as datecreated 
			,CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified 
			,createdby
			,lastmodifiedby
			,<BATCHDATE> AS ExtractDate
			,<BATCHDATE> AS BatchDate
			,<SOURCESKEY> AS SourceSkey
		FROM phasescore p
		WHERE (p.datelastmodified >= <FROMDATE_Q>)