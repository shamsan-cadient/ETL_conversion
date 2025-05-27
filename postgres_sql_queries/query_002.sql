-- Query extracted from SSIS_SQLText
-- FlowSQLId: 2
-- FlowId: 2
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.328663

SELECT		application_id, 
				locale_id, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 

	 FROM dbo.application_locale;