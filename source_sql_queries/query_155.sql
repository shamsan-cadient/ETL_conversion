-- Query extracted from SSIS_SQLText
-- FlowSQLId: 155
-- FlowId: 155
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.347698

SELECT
			p.clientext_id
			,c.questionsperpage
			,<BATCHDATE> AS ExtractDate
			,<BATCHDATE> AS BatchDate
			,<SOURCESKEY> AS SourceSkey
		FROM clientext p
		INNER JOIN hcomclientext c
			ON p.clientext_id = c.clientext_id
		WHERE
			(p.datelastmodified >= <FROMDATE_Q>)