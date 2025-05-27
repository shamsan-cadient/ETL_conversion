-- Query extracted from SSIS_SQLText
-- FlowSQLId: 147
-- FlowId: 147
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.346557

SELECT
			p.assessmentphase_id
			,c.appflowrule
			,c.phasetype
			,c.isactive
			,<BATCHDATE> AS ExtractDate
			,<BATCHDATE> AS BatchDate
			,<SOURCESKEY> AS SourceSkey
		FROM dbo.assessmentphase p
		INNER JOIN dbo.applicationassessmentphase c
			ON p.assessmentphase_id = c.applicationassessmentphase_id
		WHERE
			(p.datelastmodified >= <FROMDATE_Q>) 