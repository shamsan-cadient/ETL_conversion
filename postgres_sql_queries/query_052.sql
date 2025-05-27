-- Query extracted from SSIS_SQLText
-- FlowSQLId: 52
-- FlowId: 52
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.334125

SELECT		response_id, 
				version, 
				response_num, 
				answer_id, 
				question_id, 
				isspecialconsideration, 
				responsetag, 
				guuid, 
				TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated,  
				createdby, 
				TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified,
				lastmodifiedby, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM response_atao 
	 WHERE (datecreated >= <FROMDATE_Q>) OR (datelastmodified >= <FROMDATE_Q>)