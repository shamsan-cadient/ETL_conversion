-- Query extracted from SSIS_SQLText
-- FlowSQLId: 24
-- FlowId: 24
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.330953

SELECT		localeanswer_id, 
				version, 
				locale_id, 
				answer_id, 
				answertext, 
				CONVERT(VARCHAR(19), datecreated, 120) as datecreated, 
				createdby, 
				CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified,
				lastmodifiedby, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM locale_answer_atao 
	 WHERE (datelastmodified >= <FROMDATE_Q>)