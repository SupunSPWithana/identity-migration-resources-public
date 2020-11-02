BEGIN
  DECLARE CONTINUE HANDLER FOR SQLSTATE '42704'
  BEGIN END;
  EXECUTE IMMEDIATE 'DROP INDEX UM_ATTR_NAME_VALUE_INDEX';
END
/

CREATE INDEX UM_ATTR_NAME_VALUE_INDEX ON UM_USER_ATTRIBUTE(UM_ATTR_NAME, UM_ATTR_VALUE)
/