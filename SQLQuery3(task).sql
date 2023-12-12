CREATE DATABASE ExerciseDb4;

USE ExerciseDb4;

DROP TABLE Products

CREATE TABLE Products (
    PId INT IDENTITY(100, 1) PRIMARY KEY,
    PName NVARCHAR(50) NOT NULL,
    PPrice FLOAT,
    PTax AS (PPrice * 0.1) PERSISTED,
    PCompany NVARCHAR(50) CHECK (PCompany IN ('Samsung', 'Apple', 'Redmi', 'HTC', 'RealMe')),
    PQty INT CHECK (PQty >= 1) DEFAULT 1
)

INSERT INTO Products (PName, PPrice, PCompany, PQty) VALUES ('MOBILE', 20000.00, 'Apple', 2);

SELECT * FROM Products;
