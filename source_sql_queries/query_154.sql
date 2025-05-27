-- Query extracted from SSIS_SQLText
-- FlowSQLId: 154
-- FlowId: 154
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.347571

SELECT
			p.scriptscore_id
			,c.factorscore_id
			,c.factoridentifier
			,c.assessmentscore_id
			,c.scorename
			,c.showscore
			,<BATCHDATE> AS ExtractDate
			,<BATCHDATE> AS BatchDate
			,<SOURCESKEY> AS SourceSkey
		FROM scriptscore p
		INNER JOIN factorscore c
			ON p.scriptscore_id = c.factorscore_id
		WHERE
			(p.datelastmodified >= <FROMDATE_Q>)