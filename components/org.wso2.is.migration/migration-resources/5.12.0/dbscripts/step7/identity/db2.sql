ALTER TABLE IDN_OAUTH2_DEVICE_FLOW
    DROP CONSTRAINT USER_CODE
    ADD COLUMN QUANTIFIER INTEGER SET DEFAULT 0
    ADD CONSTRAINT USRCDE_QNTFR_CONSTRAINT UNIQUE (USER_CODE, QUANTIFIER)
/