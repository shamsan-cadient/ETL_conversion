-- Query extracted from SSIS_SQLText
-- FlowSQLId: 132
-- FlowId: 132
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.344206

SELECT		
answer_id, 
version, 
description, 
guuid, 
CONVERT(VARCHAR(19), datecreated, 120) as datecreated,  
createdby, 
CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified, 
lastmodifiedby, 
ss_external_id, 
<BATCHDATE> as ExtractDate, 
<BATCHDATE> as BatchDate, 
<SOURCESKEY> as SourceSkey 
FROM answer_atao 
WHERE (datelastmodified >= <FROMDATE_Q>)