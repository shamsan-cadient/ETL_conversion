-- Query extracted from SSIS_SQLText
-- FlowSQLId: 60
-- FlowId: 60
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.334965

SELECT		assessment_id, 
				factor_id, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM ss_assessment_factor 