-- Query extracted from SSIS_SQLText
-- FlowSQLId: 1
-- FlowId: 1
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.328515

SELECT		
application_id, 
version, 
name, 
description, 
authenticationcontext, 
applicationtype, 
controllercontext, 
defaultsequence, 
loginsequence, 
locator, 
isexternal::integer, 
isdefault::integer, 
client_id, 
role_id, 
TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated, 
TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified,  
createdby, 
lastmodifiedby, 
applicationcategory, 
<BATCHDATE> as ExtractDate, 
<BATCHDATE> as BatchDate, 
<SOURCESKEY> as SourceSkey 
FROM dbo.application 
WHERE datelastmodified >= <FROMDATE_Q>;

