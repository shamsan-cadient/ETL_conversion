-- Query extracted from SSIS_SQLText
-- FlowSQLId: 177
-- FlowId: 177
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.350710

SELECT		NonHireable_Id,
                Version,
				CONVERT(VARCHAR(19), NonHireExpiry, 120) as NonHireExpiry,
                SSN,
                Client_Id,
				CONVERT(VARCHAR(19), datecreated, 120) as datecreated, 
			    CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified,
				CreatedBy, 
				LastModifiedBy, 
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM nonhireable