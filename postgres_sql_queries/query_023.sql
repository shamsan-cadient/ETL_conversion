-- Query extracted from SSIS_SQLText
-- FlowSQLId: 23
-- FlowId: 23
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.330845

SELECT		locale_id, 
				version, 
				locale, 
				language, 
				country, 
				localetext, 
				TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated, 
			    TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified, 
				createdby, 
				lastmodifiedby, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM locale 
	 WHERE (datelastmodified >= <FROMDATE_Q>)