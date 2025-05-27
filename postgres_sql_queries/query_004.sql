-- Query extracted from SSIS_SQLText
-- FlowSQLId: 4
-- FlowId: 4
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.328905

SELECT  client_id, 
        version, 
        daysapplicationexclusive, 
        milessearchzipcode, 
        name, 
        description, 
        city, 
        state, 
        country, 
        zipcode, 
        address, 
        inlineemail, 
        emailfulladr, 
        webgrading, 
        webapptimeout, 
        websave, 
        maxloginattempts, 
        lockoutduration, 
        failedloginresetinterval, 
        TO_CHAR(datecreated, 'YYYY-MM-DD HH24:MI:SS') as datecreated, 
        TO_CHAR(datelastmodified, 'YYYY-MM-DD HH24:MI:SS') as datelastmodified, 
        createdby, 
        lastmodifiedby, 
        phone, 
        faxnumber, 
        customerid, 
        permission_id, 
        fein, 
        TO_CHAR(legalholdstartdate, 'YYYY-MM-DD HH24:MI:SS') as legalholdstartdate, 
        TO_CHAR(legalholdenddate, 'YYYY-MM-DD HH24:MI:SS') as legalholdenddate, 
        TO_CHAR(deactivationdate, 'YYYY-MM-DD HH24:MI:SS') as deactivationdate, 
        customertype, 
       <BATCHDATE> as ExtractDate, 
        <BATCHDATE> as BatchDate, 
        <SOURCESKEY> as SourceSkey eSkey 
FROM dbo.client 
WHERE datelastmodified >= <FROMDATE_Q>;