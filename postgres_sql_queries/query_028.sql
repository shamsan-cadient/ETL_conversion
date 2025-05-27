-- Query extracted from SSIS_SQLText
-- FlowSQLId: 28
-- FlowId: 28
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.331365

SELECT		localedisplaytext_id, 
				version, 
				locale_id, 
				displaytext_id, 
				text, 
				TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated, 
			    TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified, 
				createdby, 
				lastmodifiedby, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM localedisplaytext