-- Query extracted from SSIS_SQLText
-- FlowSQLId: 70
-- FlowId: 70
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.335827


		
		SELECT		/*+ index(ui, IX_USERINFO_DATEMOD) */ ur.USERINFO_ID, 
				ur.ROLE_ID, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM dbo.userinfo ui
	 LEFT OUTER JOIN dbo.user_role ur
	 ON ui.userinfo_id = ur.userinfo_id
     WHERE ui.datelastmodified >= <FROMDATE_Q>
		