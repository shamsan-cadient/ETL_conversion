-- Query extracted from SSIS_SQLText
-- FlowSQLId: 57
-- FlowId: 57
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.334674

SELECT		scriptresponse_id, 
				version, 
				script_id, 
				response_id, 
				conditionalanswervalue, 
				responsescore, 
				marginalpoints, 
				isfail, 
				isflag, 
				position_id, 
				CONVERT(VARCHAR(19), datecreated, 120) as datecreated,  
				createdby, 
				CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified,
				lastmodifiedby, 
				guuid, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM script_response_atao 
	 WHERE (datelastmodified >= <FROMDATE_Q>)