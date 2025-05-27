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
				TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated, 
			    TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified,
				CreatedBy,
				LastModifiedBy,
				<BATCHDATE> as ExtractDate, 
				<BATCHDATE> as BatchDate, 
				<SOURCESKEY> as SourceSkey 
	 FROM AvailabilityTimeframeDetails