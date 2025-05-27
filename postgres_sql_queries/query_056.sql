-- Query extracted from SSIS_SQLText
-- FlowSQLId: 56
-- FlowId: 56
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.334565

SELECT		script_question_id, 
				version, 
				script_id, 
				question_id, 
				isoptional::integer, 
				knockoutreason, 
				showoptional::integer, 
				displayhistory::integer, 
				orderby, 
				TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated,  
				createdby, 
				TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified,
				lastmodifiedby, 
				logicexpression, 
				requireallstates::integer, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM script_question_atao 
	 WHERE (datelastmodified >= <FROMDATE_Q>)