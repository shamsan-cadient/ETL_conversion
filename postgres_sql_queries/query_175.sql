-- Query extracted from SSIS_SQLText
-- FlowSQLId: 175
-- FlowId: 175
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.350466


		
		
		SELECT	opening_inventory_id,
		version,
		opening_id,
		closeddate,
		hiredjobbid_id,
		client_id,
		TO_CHAR(datecreated, ''YYYY-MM-DD HH24:MI:SS'') as datecreated,  
		createdby, 
		<BATCHDATE> as ExtractDate, 
		<BATCHDATE> as BatchDate, 
		<SOURCESKEY> as SourceSkey 
	 FROM dbo.opening_inventory 
	 WHERE (datecreated >= <FROMDATE_Q> OR closeddate >= <FROMDATE_Q>)
