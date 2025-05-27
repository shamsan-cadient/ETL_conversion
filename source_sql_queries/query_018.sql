-- Query extracted from SSIS_SQLText
-- FlowSQLId: 18
-- FlowId: 18
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.330358

SELECT		h.jobbid_workflow_history_id, 
				h.version, 
				h.jobbid_id, 
				h.flowname, 
				h.nodename, 
				h.event, 
				h.processinstance_id, 
				CONVERT(VARCHAR(19), datecreated, 120) as datecreated, 
			    CONVERT(VARCHAR(19), h.datelastmodified, 120) as datelastmodified, 
				h.createdby, 
				h.lastmodifiedby, 
				h.actiontype, 
				nv.stringvalue_ as nodetype, 
				CASE WHEN nv.stringvalue_ IS NULL THEN NULL ELSE nc.stringvalue_ END as workflowcategory, 
				h.isforautodisposition,
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM jobbid_workflow_history h with(nolock)
	 LEFT OUTER JOIN jbpm_variableinstance nv with(nolock)
	 ON nv.processinstance_= h.processinstance_id AND LOWER(nv.name_) = LOWER(h.nodename + '.nodetype') 
	 LEFT OUTER JOIN jbpm_variableinstance nc with(nolock)
	 ON nc.processinstance_= h.processinstance_id AND nc.name_ = 'workflowCategory'
	 WHERE (h.datelastmodified >= <FROMDATE_Q>)