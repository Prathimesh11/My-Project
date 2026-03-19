SELECT * FROM data;

SELECT DISTINCT `Customer Name` FROM data;

SELECT `Branch`, COUNT(*) AS TransactionCount
FROM data
GROUP BY `Branch`;

SELECT MIN(Amount) AS MinDebit
FROM data
WHERE `Transaction Type` = 'Debit';

SELECT 
    `Transaction Type`, 
    AVG(Amount) AS Avg_Amount
FROM data
GROUP BY `Transaction Type`;

SELECT
    `Customer Name`,
    SUM(`Amount`) AS Total_data_Volume
FROM
    data
GROUP BY
    `Customer Name`
ORDER BY
    Total_data_Volume DESC
LIMIT 5;

SELECT
    `Bank Name`,
    `Transaction Method`,
    COUNT(*) AS Transaction_Count
FROM
    data
GROUP BY
    `Bank Name`, `Transaction Method`
ORDER BY
    `Bank Name`, Transaction_Count DESC;
    
SELECT
    STR_TO_DATE(`Transaction Date`, '%d-%m-%Y') AS Transaction_Date,
    SUM(CASE WHEN `Transaction Type` = 'Credit' THEN `Amount` ELSE 0 END) AS Total_Credit,
    SUM(CASE WHEN `Transaction Type` = 'Debit' THEN `Amount` ELSE 0 END) AS Total_Debit
FROM
    data
GROUP BY
    Transaction_Date
ORDER BY
    Transaction_Date;
    
SELECT *,
    CASE
        WHEN Amount < 2000 THEN 'SilverUser'
        WHEN Amount >= 2000 AND Amount < 5000 THEN 'GoldUser'
        ELSE 'PlatinumUser'
    END AS GRADEOFCUSTOMERS
FROM data;

SELECT 
    `Transaction Method`, 
    COUNT(*) AS Method_Count
FROM data
GROUP BY `Transaction Method`
ORDER BY Method_Count DESC
LIMIT 1;










