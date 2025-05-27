-- Query extracted from SSIS_SQLText
-- FlowSQLId: 15
-- FlowId: 15
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.330063



   SELECT /*+ index(jbr IX_JOBBID_RESP_DATEMOD) index(r SYS_C009206) */ 
				jbr.jobbid_response_id, 
				jbr.version, 
				jbr.script_id, 
				jbr.response_id, 
				jbr.jobbid_id, 
				
				case when q.datameaning_id IS NOT NULL and r.answer_id IS NULL  				
				then CAST(jbr.answer AS NVARCHAR(510) ) else '' end answer,				 				
				jbr.responsegroup,			
				jbr.responsegroup, 
				CONVERT(VARCHAR(19), jbr.datecreated, 120) as datecreated, 
			    CONVERT(VARCHAR(19), jbr.datelastmodified, 120) as datelastmodified, 
				jbr.createdby, 
				jbr.lastmodifiedby, 
				jbr.responserank, 
				jbr.workflowinstance_id, 
				jbr.nodeinstance_id, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
    FROM jobbid_response jbr 
	 INNER JOIN response_atao r 
	 ON jbr.response_id=r.response_id
	 INNER JOIN script_question_atao sq
	 ON sq.script_id = jbr.script_id AND sq.question_id = r.question_id 
	 INNER JOIN question_atao q ON r.question_id = q.question_id
	 WHERE (sq.knockoutreason IS NOT NULL OR q.datameaning_id IS NOT NULL) 
		AND (jbr.datelastmodified >= <FROMDATE_Q>)