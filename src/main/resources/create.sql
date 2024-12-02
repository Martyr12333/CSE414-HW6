CREATE TABLE Caregivers (
    Username varchar(255),
    Salt BINARY(16),
    Hash BINARY(16),
    PRIMARY KEY (Username)
);

CREATE TABLE Patients (
    Username varchar(255),
    Salt  BINARY(16),
    Hash BINARY(16),
    PRIMARY KEY (Username)
);


CREATE TABLE Vaccines (
    Name varchar(255),
    Doses int,
    PRIMARY KEY (Name)
);

CREATE TABLE Availabilities (
    Time date,
    Username varchar(255) REFERENCES Caregivers,
    PRIMARY KEY (Time, Username)
);

CREATE TABLE Appointments (
    A_id INT IDENTITY(1,1),
    Date date,
    P_username varchar(255) REFERENCES Patients,
    C_username varchar(255) REFERENCES Caregivers,
    Vaccine_name varchar(255) REFERENCES Vaccines,
    PRIMARY KEY (A_id)
);