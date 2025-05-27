-- Query extracted from SSIS_SQLText
-- FlowSQLId: 152
-- FlowId: 152
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.347255

SELECT
			p.scriptscore_id
			,c.assessmentscore_id
			,c.assessmentidentifier
			,c.applicationphasescore_id
			,<BATCHDATE> AS ExtractDate
			,<BATCHDATE> AS BatchDate
			,<SOURCESKEY> AS SourceSkey
		FROM scriptscore p
		INNER JOIN assessmentscore c
			ON p.scriptscore_id = c.assessmentscore_id
		WHERE
			(p.datelastmodified >= <FROMDATE_Q>)