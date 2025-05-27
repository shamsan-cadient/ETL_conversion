-- Query extracted from SSIS_SQLText
-- FlowSQLId: 170
-- FlowId: 170
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.349782

SELECT
			DataMeaning_id
			,Name
			,Description
			,Category
			,IsReportable
			,Label_id
			,Client_id
			,Version
			,CONVERT(VARCHAR(19), datecreated, 120) as datecreated 
			,CreatedBy
			,CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified
			,LastModifiedBy
			,<BATCHDATE> AS ExtractDate
			,<BATCHDATE> AS BatchDate
			,<SOURCESKEY> AS SourceSkey
		FROM DataMeaning
		WHERE
			(datelastmodified >= <FROMDATE_Q>)