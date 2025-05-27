-- Query extracted from SSIS_SQLText
-- FlowSQLId: 16
-- FlowId: 16
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.330173


	

   SELECT 
        jobbidscript_id,
        version,
        jobbid_id,
        script_id,
        script_type,
        scriptweight,
        isprimary::integer,
        iscomplete::integer,
        TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated,
        TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified,
        createdby,
        lastmodifiedby,
        assessmentphase_id,
        issilentscore::integer,
       <BATCHDATE> as ExtractDate, 
		<BATCHDATE> as BatchDate, 
		<SOURCESKEY> as SourceSkey 
    FROM 
        dbo.jobbid_script
    WHERE 
        datelastmodified >= <FROMDATE_Q>;


