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
			,CONVERT(VARCHAR(19), DATELASTVIEWED, 120) as DATELASTVIEWED
			,CONVERT(VARCHAR(19), DATECREATED, 120) as datecreated 
			,CreatedBy
			,CLIENT_ID
			,<BATCHDATE> AS ExtractDate
			,<BATCHDATE> AS BatchDate
			,<SOURCESKEY> AS SourceSkey
		FROM OFCCP_VIEW_AUDIT
		WHERE
			DATELASTVIEWED >= <FROMDATE_Q> 
	
