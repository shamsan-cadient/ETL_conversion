-- Query extracted from SSIS_SQLText
-- FlowSQLId: 185
-- FlowId: 185
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.351706

SELECT	sponsoredjob_id
	,posting_id
	,jobboardname
	,action
	,sponsoredjobstatus
	,status
	,serviceid
	,setid
	,orderid
    ,TO_CHAR(datetoprocess, 'YYYY-MM-DD HH24:MI:SS') as datetoprocess
	,jobtype
	,isshowcompensation::integer
	,TO_CHAR(startdate, 'YYYY-MM-DD HH24:MI:SS') as jobstartdate
    ,TO_CHAR(enddate, 'YYYY-MM-DD HH24:MI:SS') as jobenddate
	,client_id
	,location_id
	,version
	,TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated
    ,TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified
	,createdby
	,lastmodifiedby
	,<BATCHDATE> as ExtractDate, 
	<BATCHDATE> as BatchDate, 
	<SOURCESKEY> as SourceSkey 
	FROM sponsoredjob 
	WHERE (datelastmodified >= <FROMDATE_Q>) 