-- Query extracted from SSIS_SQLText
-- FlowSQLId: 17
-- FlowId: 17
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.330260

SELECT  
    statuslog_id,
    TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated,
    status_id,
    bidstatus,
    jobbid_id,
    localuser_id,
    :BATCHDATE as ExtractDate,
    :BATCHDATE as BatchDate,
    :SOURCESKEY as SourceSkey
FROM 
    dbo.jobbid_statuslog
WHERE 
    datecreated >= :FROMDATE_Q 
    AND bidstatus IN ('JobBidStatuses.hired', 'JobBidStatuses.Offered');