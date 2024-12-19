DROP TABLE IF EXISTS NAMES;

CREATE TABLE NAMES (
    NAME VARCHAR(100)
);
INSERT INTO NAMES (NAME)
VALUES
   ('rAVI kUMAR'),
   ('priya sharma'),
   ('amit PATEL'),
   ('NEHA gupta');

UPDATE NAMES
SET NAME = INITCAP(
    TRIM(NAME) -- Ensures no leading or trailing spaces
);
SELECT * FROM NAMES;

