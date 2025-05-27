-- Query extracted from SSIS_SQLText
-- FlowSQLId: 18
-- FlowId: 18
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.330358

SELECT
  h.jobbid_workflow_history_id,
  h.version,
  h.jobbid_id,
  h.flowname,
  h.nodename,
  h.event,
  h.processinstance_id,
  TO_CHAR(h.datecreated, 'YYYY-MM-DD HH24:MI:SS') AS datecreated,
  TO_CHAR(h.datelastmodified, 'YYYY-MM-DD HH24:MI:SS') AS datelastmodified,
  h.createdby,
  h.lastmodifiedby,
  h.actiontype,
  nv.stringvalue_ AS nodetype,
  CASE
    WHEN nv.stringvalue_ IS NULL THEN NULL
    ELSE nc.stringvalue_
  END AS workflowcategory,
  h.isforautodisposition::integer,
  :BATCHDATE AS ExtractDate,
  :BATCHDATE AS BatchDate,
  :SOURCESKEY AS SourceSkey
FROM dbo.jobbid_workflow_history h
LEFT JOIN dbo.jbpm_variableinstance nv
  ON nv.processinstance_ = h.processinstance_id
  AND LOWER(nv.name_) = LOWER(h.nodename || '.nodetype')
LEFT JOIN dbo.jbpm_variableinstance nc
  ON nc.processinstance_ = h.processinstance_id
  AND nc.name_ = 'workflowCategory'
WHERE h.datelastmodified >= :FROMDATE_Q;
