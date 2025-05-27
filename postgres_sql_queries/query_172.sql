-- Query extracted from SSIS_SQLText
-- FlowSQLId: 172
-- FlowId: 172
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.350035


		
	 SELECT
		    OFCCP_VIEW_AUDIT_ID
		    ,VERSION
		    ,VIEWEDBY_PERSON_ID
		    ,PERSON_ID
		    ,JOBBID_ID
			,TO_CHAR(DATELASTVIEWED, 'YYYY-MM-DD HH24:MI:SS') as DATELASTVIEWED
			,TO_CHAR(DATECREATED, 'YYYY-MM-DD HH24:MI:SS') as datecreated 
			,CreatedBy
			,CLIENT_ID
			,<BATCHDATE> AS ExtractDate
			,<BATCHDATE> AS BatchDate
			,<SOURCESKEY> AS SourceSkey
		FROM OFCCP_VIEW_AUDIT
		WHERE
			DATELASTVIEWED >= <FROMDATE_Q> 
	
