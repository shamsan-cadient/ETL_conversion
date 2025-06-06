-- Query extracted from SSIS_SQLText
-- FlowSQLId: 66
-- FlowId: 66
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.335511

SELECT		systemvariable_id, 
				version, 
				name, 
				value, 
				category, 
				description, 
				label_id, 
				qual_id, 
				TO_CHAR(datecreated, ''YYYY-MM-DD HH24:MI:SS'') as datecreated,  
			    TO_CHAR(datelastmodified, ''YYYY-MM-DD HH24:MI:SS'') as datelastmodified,
				createdby, 
				lastmodifiedby, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM dbo.systemvariable 
	 WHERE (datelastmodified >= <FROMDATE_Q>)