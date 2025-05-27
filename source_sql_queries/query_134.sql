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
				CONVERT(VARCHAR(19), contactdhsbydate, 120) as contactdhsbydate,  
				jobbid_id, 
				CONVERT(VARCHAR(19), datecreated, 120) as datecreated, 
				CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified, 
				createdby, 
				lastmodifiedby, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM everify_info 
	 WHERE (datelastmodified >= <FROMDATE_Q>)