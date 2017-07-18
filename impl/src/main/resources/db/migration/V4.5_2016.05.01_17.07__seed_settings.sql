INSERT INTO SETTINGS(ACTIVE_PAGE_MODE,created_by, created_at)
        VALUES ('BLUESKY', 'SYSTEM',SYSDATE);

INSERT INTO PAGE_MODE(MODE_NAME,REDIRECT_URL,PAUSE_PUBLISH, SETTINGS_ID)
        VALUES('BLUESKY','',0,(SELECT MAX(ID) FROM SETTINGS));
INSERT INTO PAGE_MODE(MODE_NAME,REDIRECT_URL,PAUSE_PUBLISH, SETTINGS_ID)
        VALUES('STORM','',0,(SELECT MAX(ID) FROM SETTINGS));
INSERT INTO PAGE_MODE(MODE_NAME,REDIRECT_URL,PAUSE_PUBLISH, SETTINGS_ID)
        VALUES('MAINTENANCE','outagemap.com/maintenance.html',0,(SELECT MAX(ID) FROM SETTINGS));
INSERT INTO PAGE_MODE(MODE_NAME,REDIRECT_URL,PAUSE_PUBLISH, SETTINGS_ID)
        VALUES('PAGEDOWN','',1,(SELECT MAX(ID) FROM SETTINGS));

INSERT INTO UPDATE_WORDING(language_code, WORDING, SETTINGS_ID)
        VALUES('EN-US','Information updated every 5 minutes.',(SELECT MAX(ID) FROM SETTINGS));

COMMIT;