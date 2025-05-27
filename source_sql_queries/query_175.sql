-- Query extracted from SSIS_SQLText
-- FlowSQLId: 175
-- FlowId: 175
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.350466


		
		
		SELECT	Opening_Inventory_Id,
		Version,
		Opening_Id,
		ClosedDate,
		HiredJobBid_Id,
		Client_Id,
		CONVERT(VARCHAR(19), datecreated, 120) as DateCreated,  
		CreatedBy, 
		<BATCHDATE> as ExtractDate, 
		<BATCHDATE> as BatchDate, 
		<SOURCESKEY> as SourceSkey 
	 FROM Opening_Inventory 
	 WHERE (datecreated >= <FROMDATE_Q> OR ClosedDate >= <FROMDATE_Q>)
