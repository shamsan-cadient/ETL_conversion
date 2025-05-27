-- Query extracted from SSIS_SQLText
-- FlowSQLId: 38
-- FlowId: 38
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.332417

SELECT		logicallabel_id, 
				version, 
				label, 
				mutable, 
				labeltype, 
				CONVERT(VARCHAR(19), datecreated, 120) as datecreated, 
			    CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified, 
				createdby, 
				lastmodifiedby, 
				permission_id, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM logicallabel