-- Query extracted from SSIS_SQLText
-- FlowSQLId: 54
-- FlowId: 54
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.334353

SELECT		role_permission_id, 
				permission_id, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM dbo.role_permission 