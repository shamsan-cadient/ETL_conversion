-- Query extracted from SSIS_SQLText
-- FlowSQLId: 58
-- FlowId: 58
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.334787

SELECT  scriptscore_id,       version,       points,      percentage,       band,       scorestatus,       jobbid_id,       script_id,       CONVERT(VARCHAR(19), datecreated, 120) as datecreated,        CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified,      createdby,       lastmodifiedby,       scoreband,       clientintegration_id,      <BATCHDATE> as ExtractDate,       <BATCHDATE> as BatchDate,       <SOURCESKEY> as SourceSkey     FROM scriptscore with(nolock)    WHERE (datelastmodified >= <FROMDATE_Q>)