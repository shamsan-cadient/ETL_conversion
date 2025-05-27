-- Query extracted from SSIS_SQLText
-- FlowSQLId: 159
-- FlowId: 159
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.348225

SELECT
			p.phasescore_id
			,o.overallphasescore_id
			,o.assessmentphase_id
			,<BATCHDATE> AS ExtractDate
			,<BATCHDATE> AS BatchDate
			,<SOURCESKEY> AS SourceSkey
		FROM phasescore p
		INNER JOIN overallphasescore o
			ON p.phasescore_id = o.overallphasescore_id		
		WHERE
		(p.datelastmodified >= <FROMDATE_Q>) 