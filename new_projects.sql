
-----TABLE
drop table if exists branch;

create table branch
(
branch_id varchar(18) primary key,
manager_id varchar(10),
branch_address varchar(20),
contact_no varchar(10)
);

alter table branch
alter column contact_no type varchar(20);

create table employees
(
emp_id VARCHAR(10) primary key,
emp_name VARCHAR(30),
position VARCHAR(30),
salary int,
branch_id varchar(18)
--
--CONSTRAINT fk_branch FOREIGN KEY (branch_id)
--        REFERENCES branch(branch_id)
);

alter table schemas.employees
add constraint fk_branch
foreign key(branch_id)
references branch(branch_id);


CREATE TABLE books
(
            isbn VARCHAR(50) PRIMARY KEY,
            book_title VARCHAR(80),
            category VARCHAR(30),
            rental_price DECIMAL(10,2),
            status VARCHAR(10),
            author VARCHAR(30),
            publisher VARCHAR(30)
);



CREATE TABLE members
(
            member_id VARCHAR(10) PRIMARY KEY,
            member_name VARCHAR(30),
            member_address VARCHAR(30),
            reg_date DATE
);

CREATE TABLE issued_status
(
            issued_id VARCHAR(10) PRIMARY KEY,
            issued_member_id VARCHAR(30),
            issued_book_name VARCHAR(80),
            issued_date DATE,
            issued_book_isbn VARCHAR(50),
            issued_emp_id VARCHAR(10)
);  
alter table issued_status
alter column issued_id type varchar(20);

CREATE TABLE return_status
(
            return_id VARCHAR(10) PRIMARY KEY,
            issued_id VARCHAR(30),
            return_book_name VARCHAR(80),
            return_date DATE,
            return_book_isbn VARCHAR(50),
            --FOREIGN KEY (return_book_isbn) REFERENCES books(isbn)
);


--Foreign Key

alter table issued_status
add constraint fk_members
foreign key(issued_member_id)
references members(member_id);


alter table issued_status
add constraint fk_books
foreign key(issued_books_isbn)
references books(isbn);

alter table issued_status
add constraint fk_employees
foreign key(issued_emp_id)
references employees(emp_id);




alter table return_status
add constraint fk_issued_status 
foreign key(issued_id)
references issued_status(issued_id);

