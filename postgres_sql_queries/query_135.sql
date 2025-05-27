-- Query extracted from SSIS_SQLText
-- FlowSQLId: 135
-- FlowId: 135
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.344513

SELECT		everifystatuslog_id, 
				version, 
				eligibilitycode, 
				eligibilitycodeds, 
				eligibilitydesc, 
				statuscode, 
				lettertypecode, 
				type, 
				methodname, 
				processinstance_id, 
				everifyinfo_id, 
				TO_CHAR(datecreated, ''YYYY-MM-DD HH24:MI:SS'') as datecreated, 
				TO_CHAR(datelastmodified, ''YYYY-MM-DD HH24:MI:SS'') as datelastmodified, 
				createdby, 
				lastmodifiedby, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM dbo.everify_statuslog 
	 WHERE (datelastmodified >= <FROMDATE_Q>)