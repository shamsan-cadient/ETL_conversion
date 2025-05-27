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
				TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated, 
			    TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified,  
				createdby, 
				lastmodifiedby, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM localedisplaysetvalue