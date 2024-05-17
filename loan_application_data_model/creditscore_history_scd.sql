CREATE TABLE dim_creditscore_history_scd (
    CreditScoreID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT NOT NULL,
    CreditScore INT NOT NULL,
    CreditAgency VARCHAR(50),
    EffectiveDate DATE NOT NULL, -- Start of the record's validity period
    ExpirationDate DATE NULL,    -- End of the record's validity period; NULL means current record
    IsCurrent CHAR(1) NOT NULL,  -- 'Y' for the current record, 'N' for historical
    CreatedDate DATETIME DEFAULT GETDATE(), -- Record creation timestamp
    ModifiedDate DATETIME DEFAULT GETDATE(), -- Record modification timestamp
    CONSTRAINT chk_IsCurrent CHECK (IsCurrent IN ('Y', 'N'))
);
