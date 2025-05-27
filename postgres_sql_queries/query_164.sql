-- Query extracted from SSIS_SQLText
-- FlowSQLId: 164
-- FlowId: 164
-- DatabaseTypeId: 2
-- MinVersion: 8.5
-- MaxVersion: 999
-- Extracted on: 2025-05-25T17:11:39.348885

SELECT
			p.clientext_id
			,c.nonhireableduration
			,c.hmctimeout
			,c.epredix
			,c.wotcprovider
			,c.clienttype
			,c.bgvendorname
			,<BATCHDATE> AS ExtractDate
			,<BATCHDATE> AS BatchDate
			,<SOURCESKEY> AS SourceSkey
	FROM clientext p
	INNER JOIN tmdclientext c
		ON p.clientext_id = c.clientext_id
	WHERE
		(p.datelastmodified >= <FROMDATE_Q>)