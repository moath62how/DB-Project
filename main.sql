-- code for the employee table

Create table books (
    id int PRIMARY KEY ,
    name varchar(25) NOT NULL,
    genre varchar(25),
    type varchar(25),
    Author varchar(50) NOT NULL
    price int,
)

/*
This is how to insert data

!!INSERT INTO BOOKS 
!!VALUES (seq_books.nextval,'BOOK NAME HERE','ENTER THE GENRE HERE','TYPE GOES HERE','Price goes here','AUTHOR NAME HERE');


!!INSERT INTO Transactions 
!!VALUES (seq_transactions.nextval,'ITEM ID HERE','SELLER ID HERE','PAYER ID HERE','DATE HERE','TIME HERE','AMOUNT OF THE ITEMS','THE PRICE');

!!INSERT INTO EMPLOYEES  
!!VALUES ('ID GOES HERE','SALARY HERE','FIRST NAME HERE','LAST NAME HERE','ROLE','GENDER BUT MUST BE M OR F ','DATE OF BIRTH HERE','DATE OF HIRE HERE','MANAGER ID HERE');
*/

-- code for the sequence of the books 
CREATE SEQUENCE seq_books
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10; 

--
Create sequence seq_transactions
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 20; 

-- code for the employees
Create table employees(
ID int PRIMARY KEY,
SALARY int NOT NULL,
First_name varchar(20) NOT NULL,
Last_name varchar(20) NOT NULL,
ROLE varchar(20) NOT NULL,
Gender varchar(1),
Birth_date date NOT NULL,
Hire_date date NOT NULL,
MANAGER_ID int,
FOREIGN KEY (MANAGER_ID) REFERENCES employees(ID)
)


-- code for transactions
Create table transactions (
    id int PRIMARY KEY ,
    item INT NOT NULL,
    seller int not null ,
    payer varchar(50) not null,
    Date_Of_Payment date,
    Time_Of_Payment timestamp,
    amount_Item int,
    charge int,
    FOREIGN KEY (seller) REFERENCES employees(ID),
    FOREIGN KEY (item) REFERENCES Books(ID)
)