-- Query extracted from SSIS_SQLText
-- FlowSQLId: 64
-- FlowId: 64
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.335324

SELECT		factor_id, 
				version, 
				factor_name, 
				factor_description, 
				blendedname, 
				normname, 
				TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated,  
			    TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified,
				createdby, 
				lastmodifiedby, 
				factortype_id, 
				CAST(std_deviation AS numeric(38, 20)) as std_deviation,
				CAST(mean AS numeric(38, 20)) as mean,
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM ss_factor 
	 WHERE (datelastmodified >= <FROMDATE_Q>)