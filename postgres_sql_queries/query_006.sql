-- Query extracted from SSIS_SQLText
-- FlowSQLId: 6
-- FlowId: 6
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.329064

SELECT		displaysetvalue_id, 
				version, 
				definition_id, 
				name, 
				isactive, 
				CONVERT(VARCHAR(19), datecreated, 120) as datecreated, 
				CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified,
				createdby, 
				lastmodifiedby, 
				label_id, 
				qual_id, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM displaysetvalue