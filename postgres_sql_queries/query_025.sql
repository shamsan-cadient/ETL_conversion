-- Query extracted from SSIS_SQLText
-- FlowSQLId: 25
-- FlowId: 25
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.331064


		
		SELECT localequestion_id
			,version
			,locale_id
			,question_id
			,questiontext
			,TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') AS datecreated
			,createdby
			,TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') AS datelastmodified
			,lastmodifiedby
			,questionsubtext
			,questionpopuptext
			,questionadditionalnotestext,
			<BATCHDATE> as extractdate, 
				<BATCHDATE> as batchdate, 
				<SOURCESKEY> as sourceskey 
		FROM locale_question_atao
		WHERE 
			(datecreated >= <FROMDATE_Q>  or datelastmodified >= <FROMDATE_Q> )
		