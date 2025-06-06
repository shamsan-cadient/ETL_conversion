-- Query extracted from SSIS_SQLText
-- FlowSQLId: 168
-- FlowId: 168
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.349479

SELECT 
  jobbid_id, 
  version, 
  null atsstatus, 
  null atsstatusdate, 
  null atsstatusreason, 
  null customfield_id, 
  null islocked, 
  null isrehireeligible, 
  null isexplicitlyunlocked, 
  CONVERT(    VARCHAR(19),     biddate,     120  ) as biddate, 
  process_id, 
  prescreenscore, 
  prescreenrawscore, 
  averagescore, 
  mailstatus, 
  prescreenstatus, 
  bidstatus, 
  hmcbidstatus, 
  initialhmcbidstatus, 
  qualifier_id, 
  postingtype, 
  referredby_id, 
  person_id, 
  application_id, 
  location_id, 
  datachannel, 
  CONVERT(    VARCHAR(19),     datecreated,     120  ) datecreated, 
  CONVERT(    VARCHAR(19),     datelastmodified,     120  ) datelastmodified, 
  CONVERT(    VARCHAR(19),     datelockends,     120  ) datelockends, 
  CONVERT(    VARCHAR(19),     dateapplicationexpires,     120  ) dateapplicationexpires, 
  jobapplicationstatus, 
  initialstatus, 
  dirtybit, 
  pageflowinstance, 
  CONVERT(    VARCHAR(19),     datejaflockrelinquishes,     120  ) datejaflockrelinquishes, 
  appliedforlocation_id, 
  createdby, 
  lastmodifiedby, 
  ismetajobbid, 
  metajobbid_id, 
  wassaved, 
  positionkey_id, 
  assessmentscore_id, 
  initialposting_id, 
  migratedversion, 
  uniqueapplicationid, 
  guuid, 
  isformeremployee, 
  RehireEligibility, 
  i9taxwithholding_id, 
  w4taxwithholding_id, 
  scorebandsortvalue, 
  basepayamount, 
  basepayrate, 
  islocking, 
  biddatenumber, 
  eobflowinstance, 
  videoconfirmation, 
  overallphasescore_id, 
  scoredisplaylevel, 
  isquickapply,
  jobtype,
  <BATCHDATE> as ExtractDate, 
  <BATCHDATE> as BatchDate, 
  <SOURCESKEY> as SourceSkey 
FROM 
  jobbid 
WHERE 
  (datelastmodified >= <FROMDATE_Q>)
