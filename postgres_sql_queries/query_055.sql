-- Query extracted from SSIS_SQLText
-- FlowSQLId: 55
-- FlowId: 55
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.334476

SELECT		script_id, 
				version, 
				category, 
				client_id, 
				postingdestination_id, 
				jobcodes, 
				scriptsupertype, 
				status, 
				datachannel, 
				interviewscore, 
				source_script_id, 
				istemplate::integer, 
				passingscore, 
				redscore, 
				yellowscore, 
				greenscore, 
				guuid, 
				TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated,  
				createdby, 
				TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified,
				lastmodifiedby, 
				datachannel_id, 
				iscompositechild::integer, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM script_atao 
	 WHERE (datelastmodified >= <FROMDATE_Q>) 