-- Query extracted from SSIS_SQLText
-- FlowSQLId: 27
-- FlowId: 27
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.331268

SELECT		localedisplaysetvalue_id, 
				version, 
				locale_id, 
				displaysetvalue_id, 
				text, 
				displayorder, 
				CONVERT(VARCHAR(19), datecreated, 120) as datecreated, 
			    CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified,  
				createdby, 
				lastmodifiedby, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM localedisplaysetvalue