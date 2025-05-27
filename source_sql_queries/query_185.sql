-- Query extracted from SSIS_SQLText
-- FlowSQLId: 185
-- FlowId: 185
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.351706

SELECT	SPONSOREDJOB_ID
	,POSTING_ID
	,JOBBOARDNAME
	,ACTION
	,SPONSOREDJOBSTATUS
	,STATUS
	,SERVICEID
	,SETID
	,ORDERID
    ,CONVERT(    VARCHAR(19),     DATETOPROCESS,     120  ) DATETOPROCESS
	,JOBTYPE
	,ISSHOWCOMPENSATION
	,CONVERT(    VARCHAR(19),     STARTDATE,     120  ) JOBSTARTDATE
    ,CONVERT(    VARCHAR(19),     ENDDATE,     120  ) JOBENDDATE
	,CLIENT_ID
	,LOCATION_ID
	,VERSION
	,CONVERT(    VARCHAR(19),     datecreated,     120  ) datecreated
    ,CONVERT(    VARCHAR(19),     datelastmodified,     120  ) datelastmodified
	,CREATEDBY
	,LASTMODIFIEDBY
	,<BATCHDATE> as ExtractDate, 
	<BATCHDATE> as BatchDate, 
	<SOURCESKEY> as SourceSkey 
	FROM sponsoredjob 
	WHERE (datelastmodified >= <FROMDATE_Q>) 