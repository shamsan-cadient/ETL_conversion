-- Query extracted from SSIS_SQLText
-- FlowSQLId: 51
-- FlowId: 51
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.333961

SELECT		rht.requisitionhiringteam_id, 
				rht.version, 
				rht.requisition_id, 
				rht.member_id as person_id, 
				rht.memberrole, 
				rht.IsPrimaryRecruiter,
				rht.IsActive,
				CONVERT(VARCHAR(19), datecreated, 120) as datecreated, 
			    CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified,
				rht.createdby, 
				rht.lastmodifiedby, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM requisitionhiringteam rht