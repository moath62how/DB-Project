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
INSERT INTO Persons 
VALUES (seq_person.nextval,'BOOK NAME HERE','ENTER THE GENRA HERE','TYPE GOES HERE',50,'AUTHOR NAME HERE');

*/

-- code for the sequence
CREATE SEQUENCE seq_person
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10; 