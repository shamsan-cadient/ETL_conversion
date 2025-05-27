-- Query extracted from SSIS_SQLText
-- FlowSQLId: 167
-- FlowId: 167
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.349299

SELECT		ATFDetail_Id AS AvailabilityTimeframeDetail_Id, 
				Version, 
				ATF_ID as AvailabilityTimeframe_Id,
				Location_id,
				IsActive,
				IsHighlight,
				CONVERT(VARCHAR(19), datecreated, 120) as datecreated, 
			    CONVERT(VARCHAR(19), datelastmodified, 120) as datelastmodified,
				CreatedBy,
				LastModifiedBy,
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM AvailabilityTimeframeDetails