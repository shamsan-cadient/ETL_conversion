-- Query extracted from SSIS_SQLText
-- FlowSQLId: 31
-- FlowId: 31
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.331686

SELECT			localeposting_id,
				version, 
				title, 
				null as description, 
				null as requirements, 
				null as textindex, 
				locale_id, 
				TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated, 
				TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified, 
				keywords, 
				createdby, 
				lastmodifiedby, 
				posting_id, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM localeposting