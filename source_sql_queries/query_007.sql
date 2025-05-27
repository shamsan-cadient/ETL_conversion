-- Query extracted from SSIS_SQLText
-- FlowSQLId: 7
-- FlowId: 7
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.329189

SELECT		displaytext_id, 
				version, 
				name, 
				displaytype, 
				isqualifieractive, 
				label_id, 
				qual_id, 
				CONVERT(VARCHAR(19), datecreated, 120) as datecreated, 
				CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified,
				createdby, 
				lastmodifiedby, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM displaytext