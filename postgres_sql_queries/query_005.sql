-- Query extracted from SSIS_SQLText
-- FlowSQLId: 5
-- FlowId: 5
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.328983

SELECT		displaysetdefinition_id, 
				version, 
				name, 
				label_id, 
				qual_id, 
				 TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated, 
				TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified, 
				createdby,  
				lastmodifiedby, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM dbo.displaysetdefinition;