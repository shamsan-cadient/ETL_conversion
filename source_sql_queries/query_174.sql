-- Query extracted from SSIS_SQLText
-- FlowSQLId: 174
-- FlowId: 174
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.350314

SELECT	Opening_Id,
		Version,
		Position_Id,
		LocationExt_Id,
		Status,
		Planned_Hire_Count,
		Reason_Closed,
		StartDate,
		EndDate,
		Client_Id,
		CONVERT(VARCHAR(19), datecreated, 120) as datecreated,  
		createdby, 
		CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified, 
		lastmodifiedby, 
		<BATCHDATE> as ExtractDate, 
		<BATCHDATE> as BatchDate, 
		<SOURCESKEY> as SourceSkey 
	 FROM Opening 