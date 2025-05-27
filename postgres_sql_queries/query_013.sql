-- Query extracted from SSIS_SQLText
-- FlowSQLId: 13
-- FlowId: 13
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.329851


SELECT jobbid_id
	,version
	,TO_CHAR(biddate, 'YYYY-MM-DD HH24:MI:SS') AS biddate
	,NULL AS atsstatus
	,NULL AS atsstatusdate
	,NULL AS atsstatusreason
	,process_id
	,prescreenscore
	,prescreenrawscore
	,averagescore
	,mailstatus
	,prescreenstatus
	,bidstatus
	,hmcbidstatus
	,initialhmcbidstatus
	,qualifier_id
	,postingtype
	,referredby_id
	,person_id
	,application_id
	,location_id
	,NULL AS customfield_id
	,datachannel
	,TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') AS datecreated
	,TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') AS datelastmodified
	,TO_CHAR(datelockends, 'YYYY-MM-DD HH24:MI:SS') AS datelockends
	,TO_CHAR(dateapplicationexpires, 'YYYY-MM-DD HH24:MI:SS') AS dateapplicationexpires
	,jobapplicationstatus
	,initialstatus
	,dirtybit
	,pageflowinstance
	,TO_CHAR(datejaflockrelinquishes, 'YYYY-MM-DD HH24:MI:SS') AS datejaflockrelinquishes
	,appliedforlocation_id
	,createdby
	,lastmodifiedby
	,ismetajobbid::integer
	,metajobbid_id
	,wassaved::integer
	,NULL AS islocked
	,positionkey_id
	,assessmentscore_id
	,initialposting_id
	,migratedversion
	,uniqueapplicationid
	,guuid
	,isformeremployee::integer
	,NULL AS isrehireeligible
	,i9taxwithholding_id
	,w4taxwithholding_id
	,scorebandsortvalue
	,basepayamount
	,basepayrate
	,islocking::integer
	,biddatenumber
	,eobflowinstance
	,videoconfirmation::integer
	,overallphasescore_id
	,scoredisplaylevel
	,NULL AS isexplicitlyunlocked,
  <BATCHDATE> as ExtractDate, 
	<BATCHDATE> as BatchDate, 
  CAST(1 AS int) AS SourceSkey
FROM dbo.jobbid
WHERE datelastmodified >= <BATCHDATE>;
