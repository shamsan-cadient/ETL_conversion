-- Query extracted from SSIS_SQLText
-- FlowSQLId: 148
-- FlowId: 148
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.346705

SELECT		p.phasescore_id
			,a.applicationphasescore_id
			,a.assessmentphase_id
			,a.overallphasescore_id
			,<BATCHDATE> AS ExtractDate
			,<BATCHDATE> AS BatchDate
			,<SOURCESKEY> AS SourceSkey
		FROM dbo.phasescore p
		INNER JOIN dbo.applicationphasescore a
			ON p.phasescore_id = a.applicationphasescore_id
		WHERE
		(p.datelastmodified >= <FROMDATE_Q>)