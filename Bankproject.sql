create database Bank;
use Bank;
CREATE TABLE BANK_CUSTOMER ( customer_id INT ,
             	customer_name VARCHAR(20),
             	Address 	VARCHAR(20),
             	state_code  VARCHAR(3) ,    	 
             	Telephone   VARCHAR(10)	);
INSERT INTO BANK_CUSTOMER VALUES 
(123001,"Oliver", "225-5, Emeryville", "CA" , "1897614500"),
(123002,"George", "194-6,New brighton","MN" , "1897617000"),
(123003,"Harry", "2909-5,walnut creek","CA" , "1897617866"),
(123004,"Jack", "229-5, Concord",  	"CA" , "1897627999"),
(123005,"Jacob", "325-7, Mission Dist","SFO", "1897637000"),
(123006,"Noah", "275-9, saint-paul" ,  "MN" , "1897613200"),
(123007,"Charlie","125-1,Richfield",   "MN" , "1897617666"),
(123008,"Robin","3005-1,Heathrow", 	"NY" , "1897614000");

select*from bank_customer;

CREATE TABLE BANK_CUSTOMER_EXPORT ( customer_id CHAR(10),
customer_name CHAR(20),
Address CHAR(20),
state_code  CHAR(3) ,    	 
Telephone  CHAR(10));
    
INSERT INTO BANK_CUSTOMER_EXPORT VALUES 
("123001 ","Oliver", "225-5, Emeryville", "CA" , "1897614500"),
("123002 ","George", "194-6,New brighton","MN" , "189761700");

select*from bank_customer_export;

CREATE TABLE Bank_Account_Details(Customer_id INT,           	 
                             	Account_Number VARCHAR(19),
                              	Account_type VARCHAR(25),
                           	    Balance_amount INT,
                               	Account_status VARCHAR(10),             	 
                               	Relationship_type varchar(1) ) ;
INSERT INTO Bank_Account_Details  VALUES 
(123001, "4000-1956-3456",  "SAVINGS" , 200000 ,"ACTIVE","P"),
(123001, "5000-1700-3456", "RECURRING DEPOSITS" ,9400000 ,"ACTIVE","S"), 
(123002, "4000-1956-2001",  "SAVINGS", 400000 ,"ACTIVE","P"),
(123002, "5000-1700-5001",  "RECURRING DEPOSITS" ,7500000 ,"ACTIVE","S"),
(123003, "4000-1956-2900",  "SAVINGS" ,750000,"INACTIVE","P"),
(123004, "5000-1700-6091", "RECURRING DEPOSITS" ,7500000 ,"ACTIVE","S"),
(123004, "4000-1956-3401",  "SAVINGS" , 655000 ,"ACTIVE","P"),
(123005, "4000-1956-5102",  "SAVINGS" , 300000 ,"ACTIVE","P"),
(123006, "4000-1956-5698",  "SAVINGS" , 455000 ,"ACTIVE" ,"P"),
(123007, "5000-1700-9800",  "SAVINGS" , 355000 ,"ACTIVE" ,"P"),
(123007, "4000-1956-9977",  "RECURRING DEPOSITS" , 7025000,"ACTIVE" ,"S"),
(123007, "9000-1700-7777-4321",  "Credit Card"	,0  ,"INACTIVE", "P"),
(123007, '5900-1900-9877-5543', "Add-on Credit Card" ,   0   ,"ACTIVE", "S"),
(123008, "5000-1700-7755",  "SAVINGS"   	,0   	,"INACTIVE","P"),
(123006, '5800-1700-9800-7755', "Credit Card"   ,0   	,"ACTIVE", "P"),
(123006, '5890-1970-7706-8912', "Add-on Credit Card"   ,0   	,"ACTIVE", "S");

select*from bank_account_details;

CREATE TABLE BANK_ACCOUNT ( Customer_id INT, 		   			  
	                Account_Number VARCHAR(19),
		     Account_type VARCHAR(25),
		     Balance_amount INT ,
			Account_status VARCHAR(10), Relation_ship varchar(1) ) ;

INSERT INTO BANK_ACCOUNT  VALUES 
(123001, "4000-1956-3456",  "SAVINGS", 200000 ,"ACTIVE","P"),
(123001, "5000-1700-3456",  "RECURRING DEPOSITS" ,9400000 ,"ACTIVE","S"),  
(123002, "4000-1956-2001",  "SAVINGS", 400000 ,"ACTIVE","P"), 
(123002, "5000-1700-5001",  "RECURRING DEPOSITS" ,7500000 ,"ACTIVE","S"),
(123003, "4000-1956-2900",  "SAVINGS" ,750000,"INACTIVE","P"), 
(123004, "5000-1700-6091",  "RECURRING DEPOSITS" ,7500000 ,"ACTIVE","S"), 
(123004, "4000-1956-3401",  "SAVINGS", 655000 ,"ACTIVE","P"),
(123005, "4000-1956-5102",  "SAVINGS", 300000 ,"ACTIVE","P"),
(123006, "4000-1956-5698",  "SAVINGS", 455000 ,"ACTIVE" ,"P"), 
(123007, "5000-1700-9800",  "SAVINGS", 355000 ,"ACTIVE" ,"P"), 
(123007, "4000-1956-9977",  "RECURRING DEPOSITS" , 7025000,"ACTIVE" ,"S"), 
(123007, "9000-1700-7777-4321",  "CREDITCARD",0 ,"INACTIVE","P"),
(123008, "5000-1700-7755",  "SAVINGS",NULL,"INACTIVE","P"); 

select *from bank_account;

CREATE TABLE Bank_Account_Relationship_Details
                             	( Customer_id INT,
								Account_Number VARCHAR(19),
                            	Account_type VARCHAR(25),
                             	Linking_Account_Number VARCHAR(19));
INSERT INTO Bank_Account_Relationship_Details  VALUES(123001, "4000-1956-3456",  "SAVINGS" , ""),
(123001, "5000-1700-3456",  "RECURRING DEPOSITS" , "4000-1956-3456"),
(123002, "4000-1956-2001",  "SAVINGS" , "" ),
(123002, "5000-1700-5001",  "RECURRING DEPOSITS" , "4000-1956-2001" ),
(123003, "4000-1956-2900",  "SAVINGS" , "" ),
(123004, "5000-1700-6091",  "RECURRING DEPOSITS" , "4000-1956-2900" ),
(123004, "5000-1700-7791",  "RECURRING DEPOSITS" , "4000-1956-2900" ),
(123007, "5000-1700-9800",  "SAVINGS" , "" ),
(123007, "4000-1956-9977",  "RECURRING DEPOSITS" , "5000-1700-9800" ),
(NULL, "9000-1700-7777-4321",  "Credit Card" , "5000-1700-9800" ),
(NULL, '5900-1900-9877-5543', 'Add-on Credit Card', '9000-1700-7777-4321' ),
(NULL, '5800-1700-9800-7755', 'Credit Card', '4000-1956-5698' ),
(NULL, '5890-1970-7706-8912', 'Add-on Credit Card', '5800-1700-9800-7755' );

select*from bank_account_relationship_details;

CREATE TABLE BANK_ACCOUNT_TRANSACTION (  
              	Account_Number VARCHAR(19),
              	Transaction_amount Decimal(18,2) ,
              	Transcation_channel VARCHAR(18) ,
             	Province varchar(3) ,
             	Transaction_Date Date) ;
INSERT INTO BANK_ACCOUNT_TRANSACTION VALUES                 
( "4000-1956-3456",  -2000, "ATM withdrawl" , "CA", "2020-01-13"),
( "4000-1956-2001",  -4000, "POS-Walmart"   , "MN", "2020-02-14"),
( "4000-1956-2001",  -1600, "UPI transfer"  , "MN", "2020-01-19"),
( "4000-1956-2001",  -6000, "Bankers cheque", "CA", "2020-03-23"),
( "4000-1956-2001",  -3000, "Net banking"   , "CA", "2020-04-24"),
( "4000-1956-2001",  23000, "cheque deposit", "MN", "2020-03-15"),
( "5000-1700-6091",  40000, "ECS transfer"  , "NY", "2020-02-19"),
( "5000-1700-7791",  40000, "ECS transfer"  , "NY", "2020-02-19"),
( "4000-1956-3401",   8000, "Cash Deposit"  , "NY", "2020-01-19"),
( "4000-1956-5102",  -6500, "ATM withdrawal" , "NY", "2020-03-14"),
( "4000-1956-5698",  -9000, "Cash Deposit"  , "NY", "2020-03-27"),
( "4000-1956-9977",  50000, "ECS transfer"  , "NY", "2020-01-16"),
( "9000-1700-7777-4321",  -5000, "POS-Walmart", "NY", "2020-02-17"),
( "9000-1700-7777-4321",  -8000, "Shopping Cart", "MN", "2020-03-13"),
( "9000-1700-7777-4321",  -2500, "Shopping Cart", "MN", "2020-04-21"),
( "5800-1700-9800-7755", -9000, "POS-Walmart","MN", "2020-04-13"),
( '5890-1970-7706-8912', -11000, "Shopping Cart" , "NY" , "2020-03-12") ;

select * from bank_account_transaction;

CREATE TABLE BANK_CUSTOMER_MESSAGES (  
              	Event VARCHAR(24),
              	Customer_message VARCHAR(75),
              	Notice_delivery_mode VARCHAR(15)) ;


INSERT INTO BANK_CUSTOMER_MESSAGES VALUES ( "Adhoc", "All Banks are closed due to announcement of National strike", "mobile" ) ,
( "Transaction Limit", "Only limited withdrawals per card are allowed from ATM machines", "mobile" );

INSERT INTO `bank_account_transaction`(`Account_Number`, `Transaction_amount`, `Transcation_channel`, `Province`, `Transaction_Date`) VALUES
('4000-1956-9977' ,    10000.00     ,'ECS transfer',     'MN' ,    '2020-02-16' ) ;

-- inserted for queries after 17th  
INSERT INTO `bank_account_transaction`(`Account_Number`, `Transaction_amount`, `Transcation_channel`, `Province`, `Transaction_Date`) 
VALUES
('4000-1956-9977' ,    40000.00     ,'ECS transfer',     'MN' ,    '2020-03-18' ),
('4000-1956-9977' ,    60000.00     ,'ECS transfer',     'MN' ,    '2020-04-18' ),
('4000-1956-9977' ,    20000.00     ,'ECS transfer',     'MN' ,    '2020-03-20' ),
('4000-1956-9977' ,    49000.00     ,'ECS transfer',     'MN' ,    '2020-06-18' ) ;

CREATE TABLE BANK_INTEREST_RATE(  
            	account_type varchar(24),
              	interest_rate decimal(4,2),
            	month varchar(2),
            	year  varchar(4)
             	);

INSERT  INTO BANK_INTEREST_RATE VALUES ( "SAVINGS" , 0.04 , '02' , '2020' ),
( "RECURRING DEPOSITS" , 0.07, '02' , '2020' ),
( "PRIVILEGED_INTEREST_RATE" , 0.08 , '02' , '2020' );

select*from bank_interest_rate;


#1) Print customer Id, customer name and average account_balance maintained by each customer for all  of his/her accounts in the bank.(8 Rows)
SELECT c.customer_id,c.customer_name,AVG(a.balance_amount) AS avg_balance
FROM bank_customer c JOIN bank_account_details a
ON c.customer_id = a.customer_id
GROUP BY c.customer_id,c.customer_name;


# 2) Print customer_id , account_number and balance_amount , condition that if balance_amount is nil then assign transaction_amount  for account_type = "Credit Card"(4 Rows)
SELECT customer_id,account_number,balance_amount
FROM bank_account
WHERE account_type = 'Credit Card';
#Print account_number and balance_amount , transaction_amount,Transaction_Date from Bank_Account_Details and bank_account_transaction for all the transactions occurred during march,2020 and april, 2020(12 Rows)
SELECT
  d.account_number,
  d.balance_amount,
  t.transaction_amount,
  t.transaction_date
FROM Bank_Account_Details d
JOIN bank_account_transaction t
  ON d.account_number = t.account_number
WHERE t.transaction_date BETWEEN '2020-03-01' AND '2020-04-30';

# 4) Print all of the customer id, account number,  balance_amount, transaction_amount , Transaction_Date  from bank_customer, Bank_Account_Details and bank_account_transaction tables where excluding all of their transactions in march, 2020  month (22 Rows)
SELECT
  c.customer_id,
  d.account_number,
  d.balance_amount,
  t.transaction_amount,
  t.transaction_date
FROM bank_customer c
JOIN Bank_Account_Details d
  ON c.customer_id = d.customer_id
LEFT JOIN bank_account_transaction t
  ON d.account_number = t.account_number
     AND t.transaction_date NOT BETWEEN '2020-03-01' AND '2020-03-31';

# 5) Print only the customer id, account_number, balance_amount,transaction_amount ,transaction_date who did transactions during the first quarter. Do not display the accounts if they have not done any transactions in the first quarter.(16 Rows)
SELECT
  c.customer_id,
  d.account_number,
  d.balance_amount,
  t.transaction_amount,
  t.transaction_date
FROM bank_customer c
JOIN Bank_Account_Details d
  ON c.customer_id = d.customer_id
JOIN bank_account_transaction t
  ON d.account_number = t.account_number
WHERE t.transaction_date BETWEEN '2020-01-01' AND '2020-03-31';

# Question 6:
# 6) Print account_number, Event and Customer_message from BANK_CUSTOMER_MESSAGES and Bank_Account_Details to display an “Adhoc" Event for all customers who have  “SAVINGS" account_type account.(8 Rows)
SELECT
  d.account_number,
  m.Event,
  m.Customer_message
FROM Bank_Account_Details d
JOIN BANK_CUSTOMER_MESSAGES m
  ON m.Event = 'Adhoc'
WHERE d.account_type = 'SAVINGS';

# 7) Print all Customer_id, Account_Number, Account_type, and display deducted balance_amount by  subtracting only negative transaction_amounts for Relationship_type ="P" ( P - means  Primary , S - means Secondary ) .(27 Rows)
SELECT
  d.customer_id,
  d.account_number,
  d.account_type,
  d.balance_amount,
  -- Add sum of negative transactions (negative numbers) to balance_amount:
  d.balance_amount + COALESCE(
    SUM(CASE WHEN t.transaction_amount < 0 THEN t.transaction_amount ELSE 0 END), 0
  ) AS adjusted_balance_after_negative_txns
FROM Bank_Account_Details d
LEFT JOIN bank_account_transaction t
  ON d.account_number = t.account_number
WHERE d.Relationship_type = 'P'
GROUP BY d.customer_id, d.account_number, d.account_type, d.balance_amount;

# a) Display records of All Accounts , their Account_types, the transaction amount.
SELECT
  a.customer_id,
  a.account_number,
  a.account_type,
  t.transaction_amount
FROM Bank_Account a
LEFT JOIN bank_account_transaction t
  ON a.account_number = t.account_number;
# b) Along with first step, Display other columns with corresponding linking account number, account types (15 Rows)
SELECT
  a.customer_id,
  a.account_number,
  a.account_type,
  t.transaction_amount,
  rd.linking_account_number,
  la.account_type AS linking_account_type
FROM Bank_Account a
LEFT JOIN bank_account_transaction t
  ON a.account_number = t.account_number
LEFT JOIN Bank_Account_Relationship_Details rd
  ON a.account_number = rd.account_number
LEFT JOIN Bank_Account la
  ON rd.linking_account_number = la.account_number;
# Question 9:
# a) Display records of All Accounts , their Account_types, the transaction amount.
# b) Along with first step, Display other columns with corresponding linking account number, account types
# c) After retrieving all records of accounts and their linked accounts, display the   transaction amount of accounts appeared  in another column.(26 Rows)
SELECT
  a.customer_id,
  a.account_number,
  a.account_type,
  t.transaction_amount AS account_transaction_amount,
  rd.linking_account_number,
  la.account_type AS linking_account_type,
  t2.transaction_amount AS linking_account_transaction_amount
FROM Bank_Account a
LEFT JOIN bank_account_transaction t
  ON a.account_number = t.account_number
LEFT JOIN Bank_Account_Relationship_Details rd
  ON a.account_number = rd.account_number
LEFT JOIN Bank_Account la
  ON rd.linking_account_number = la.account_number
LEFT JOIN bank_account_transaction t2
  ON rd.linking_account_number = t2.account_number;

# Question 10:
# 10) Display all saving account holders have “Add-on Credit Cards" and “Credit cards" (3 Rows)
SELECT DISTINCT
  c.customer_id,
  c.customer_name
FROM bank_customer c
WHERE EXISTS (
    SELECT 1 FROM Bank_Account_Details d1
    WHERE d1.customer_id = c.customer_id
      AND d1.account_type = 'SAVINGS'
)
AND EXISTS (
    SELECT 1 FROM Bank_Account_Details d2
    WHERE d2.customer_id = c.customer_id
      AND d2.account_type = 'Credit Card')
AND EXISTS (
    SELECT 1 FROM Bank_Account_Details d3
    WHERE d3.customer_id = c.customer_id
      AND d3.account_type = 'Add-on Credit Card');


# Question 11:
# 11)  Display  records of “SAVINGS” account linked with “Credit cards" account_type and its credit
# aggregate sum of transaction amount. (1 Row)
# Ref: Check linking relationship in bank_transaction_relationship_details.
        # Check transaction_amount in bank_account_transaction.
SELECT
  s.customer_id AS savings_customer_id,
  s.account_number AS savings_account_number,
  rd.account_number AS credit_account_number,
  SUM(t.transaction_amount) AS credit_account_transaction_sum
FROM Bank_Account_Details s
JOIN Bank_Account_Relationship_Details rd
  ON rd.linking_account_number = s.account_number
     AND rd.account_type LIKE '%Credit Card%'
     -- rd.account_type is the type of rd.account_number (credit card)
JOIN bank_account_transaction t
  ON rd.account_number = t.account_number
WHERE s.account_type = 'SAVINGS'
GROUP BY s.customer_id, s.account_number, rd.account_number;

    
