-- Query extracted from SSIS_SQLText
-- FlowSQLId: 59
-- FlowId: 59
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.334890

SELECT		assessment_id, 
				version, 
				assessment_external_id, 
				assessment_name, 
				assessment_description, 
				libraryname, 
				CONVERT(VARCHAR(19), datecreated, 120) as datecreated,  
				CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified,
				createdby, 
				lastmodifiedby, 
				assessmenttype_id, 
				factordisplayrule_type, 
				total_possible_points, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM ss_assessment 
	 WHERE (datelastmodified >= <FROMDATE_Q>)