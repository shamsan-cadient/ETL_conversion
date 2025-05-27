-- Query extracted from SSIS_SQLText
-- FlowSQLId: 134
-- FlowId: 134
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.344364

SELECT		everifyinfo_id, 
				version, 
				casenumber, 
				eligibilitycode, 
				eligibilitycodeds, 
				eligibilitydesc, 
				hiringmgrname, 
				hiringmgrcomments, 
				hiringmgrphone,
				TO_CHAR(contactdhsbydate, ''YYYY-MM-DD HH24:MI:SS'') as contactdhsbydate,  
				jobbid_id, 
				TO_CHAR(datecreated, ''YYYY-MM-DD HH24:MI:SS'') as datecreated, 
				TO_CHAR(datelastmodified, ''YYYY-MM-DD HH24:MI:SS'') as datelastmodified, 
				createdby, 
				lastmodifiedby, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM dbo.everify_info 
	 WHERE (datelastmodified >= <FROMDATE_Q>)