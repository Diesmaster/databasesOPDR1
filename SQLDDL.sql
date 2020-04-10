PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE employee (
SSN INTEGER NON NULL,
name TEXT NON NULL,
address TEXT NON NULL,
PRIMARY KEY (SSN)
);
CREATE TABLE doktor (
SSN INTEGER NON NULL,
speciality TEXT NON NULL,
qualification TEXT NON NULL,
PRIMARY KEY (SSN),
FOREIGN KEY (SSN)
REFERENCES employee (SSN)
);
CREATE TABLE nurse (
rank TEXT NON NULL,
SSN INTEGER NON NULL,
PRIMARY KEY (SSN),
FOREIGN KEY (SSN)
REFERENCES employee (SSN)
);
CREATE TABLE room (
num INTEGER NON NULL,
capacity INTEGER NON NULL,
type TEXT NON NULL,
PRIMARY KEY (NUM)
);
CREATE TABLE governs (
SSN INTEGER NON NULL,
num INTEGER NON NULL,
PRIMARY KEY (num),
FOREIGN KEY (SSN)
REFERENCES nurse (SSN)
);
CREATE TABLE patient (
age INTEGER NON NULL,
name TEXT NON NULL,
pid INTEGER NON NULL,
PRIMARY KEY (pid)
);
CREATE TABLE checks(
pid INTEGER NON NULL,
SSN INTEGER NON NULL,
PRIMARY KEY (pid),
FOREIGN KEY (SSN)
REFERENCES doktor (SSN)
);
CREATE TABLE has_record(
rid INTEGER NON NULL,
pid INTEGER NON NULL,
description TEXT NON NULL,
PRIMARY KEY (rid),
FOREIGN KEY (pid)
REFERENCES patient (pid)
);
COMMIT;
