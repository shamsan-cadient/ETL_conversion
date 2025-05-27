-- Query extracted from SSIS_SQLText
-- FlowSQLId: 158
-- FlowId: 158
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.348095

SELECT
			p.assessmentphase_id
			,c.scorelevel
			,<BATCHDATE> AS ExtractDate
			,<BATCHDATE> AS BatchDate
			,<SOURCESKEY> AS SourceSkey
		FROM dbo.assessmentphase p
		INNER JOIN dbo.overallassessmentphase c
			ON p.assessmentphase_id = c.overallassessmentphase_id
		WHERE
			(p.datelastmodified >= <FROMDATE_Q>) 