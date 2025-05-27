-- Query extracted from SSIS_SQLText
-- FlowSQLId: 165
-- FlowId: 165
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.349023

SELECT		client_id,
				jobbid_id,
				processname,
				processed_atao::integer,
				processed_dw::integer,
				<BATCHDATE> as extractdate, 
				<BATCHDATE> as batchdate, 
				<SOURCESKEY> as sourceskey 
	 FROM dbo.jobbid_process_driver