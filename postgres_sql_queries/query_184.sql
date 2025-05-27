-- Query extracted from SSIS_SQLText
-- FlowSQLId: 184
-- FlowId: 184
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.351583

 
	 SELECT	Opening_Audit_Id,
		Version,
		Opening_Id,
		Action,
		Attribute,
		Transaction_Id,
		 Old_Value,
		 New_Value,
		Client_Id,
		TO_CHAR(DateCreated, 'YYYY-MM-DD HH24:MI:SS') as DateCreated, 
		CreatedBy,
		<BATCHDATE> as ExtractDate, 
		<BATCHDATE> as BatchDate, 
		<SOURCESKEY> as SourceSkey 
FROM Opening_Audit 
WHERE (datecreated >= <FROMDATE_Q>) 
AND   attribute in ('endDate', 'status') 