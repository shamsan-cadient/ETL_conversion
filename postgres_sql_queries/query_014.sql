-- Query extracted from SSIS_SQLText
-- FlowSQLId: 14
-- FlowId: 14
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.329942

SELECT
    jp.jobbidposting_id, 
    jp.jobbid_id, 
    jp.posting_id, 
    jp.isqualified, 
    jp.isprimary, 
    jp.metassessmentcriteria, 
    :BATCHDATE as ExtractDate, 
    :BATCHDATE as BatchDate, 
    :SOURCESKEY as SourceSkey 
FROM 
    dbo.jobbid_posting jp 
    INNER JOIN jobbid jb ON jp.jobbid_id = jb.jobbid_id 
WHERE 
    jb.datelastmodified >= :FROMDATE_Q;