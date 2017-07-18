INSERT INTO ALERT_DOCUMENT(TIMESTAMP_DIRECTORY,SELECTED_ALERT_ID, IS_VISIBLE,created_by, created_at)
        VALUES (' ', 1,0,'SYSTEM',SYSDATE);

INSERT INTO ALERT (ALERT_DOCUMENT_ID, REF_ID)
        SELECT MAX(ID), 1 FROM ALERT_DOCUMENT;

INSERT INTO ALERT_DATA (ALERT_ID, language_code, BANNER_TITLE, LONG_TEXT)
        SELECT MAX(ID), 'ES-ES', 'Alerta título aquí', 'Alerta descripción de texto aquí' FROM ALERT;

INSERT INTO ALERT_DATA (ALERT_ID, language_code, BANNER_TITLE, LONG_TEXT)
        SELECT MAX(ID), 'EN-US', 'Alert title here', 'Alert description text here' FROM ALERT;


COMMIT;
