-- Query extracted from SSIS_SQLText
-- FlowSQLId: 16
-- FlowId: 16
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.330173


	

   SELECT	jobbidscript_id
			,version
			,jobbid_id
			,script_id
			,script_type
			,scriptweight
			,isprimary
			,iscomplete
			
			,	CONVERT(VARCHAR(19), datecreated, 120) as datecreated
			,CONVERT(VARCHAR(19), datelastmodified, 120)  AS datelastmodified
			,createdby
			,lastmodifiedby
			,assessmentphase_id
			,issilentscore
			,	<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM jobbid_script
		WHERE 
			(DateLastModified >= <FROMDATE_Q> )
		

