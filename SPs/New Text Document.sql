--SELECT @@VERSION
--SELECT @@SERVERNAME
--SELECT @@SERVICENAME
--SELECT * FROM fn_virtualservernodes();
--It converts value to specified data type and if conversion fails it returns NULL. 
DECLARE @sampletext AS VARCHAR(10);
SET @sampletext = '123456';
DECLARE @realDate AS VARCHAR(10);
SET @realDate = '13/09/2015';
SELECT TRY_CONVERT(INT, @sampletext); -- 123456
SELECT TRY_CONVERT(DATETIME, @sampletext); -- NULL
SELECT TRY_CONVERT(DATETIME, @realDate, 111); -- Sep, 13 2015 