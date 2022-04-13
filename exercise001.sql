create database exerciseDB;

use exerciseDB;
/*
create table countries(
       country_id int not null,
       country_name varchar(25) not null,
       region_id int not null
);

-- select * from countries
desc countries;

create table if not exists dup_countries like countries;

desc dup_countries;
*/

/*
create table jobs (
         job_id int not null,
         job_title varchar (20) not null,
         min_salary int (10),
         max_salary int (11),
         check(max_salary <= 25000)
);

desc jobs;

*/
/*
create table countries (
         country_id varchar (4),
         country_name varchar (20),
         region_id int not null,
         check (country_name in ('Italy','India','China'))
);

drop table countries;
desc countries;
*/

/*

create table job_history (
		  empolyee_id varchar (5),
          start_date date,
          end_date date,
          check(end_date like '--/--/----'),
          job_id int not null,
          department_id int not null
);

desc job_history;
*/

/*
create table countries (
         country_id varchar (4),
         country_name varchar (20),
         region_id int not null,
		 unique (country_id)
);

drop table countries;

desc countries;
*/
create table jobs (
			job_id varchar (15) not null unique,
            job_title nvarchar (40) not null default ' ' ,
            min_salary int (10) default 8000,
            max_salary int (11) default null
);

desc jobs; 

/*
create table countries (
         country_id varchar (4) not null unique primary key,
         country_name varchar (20) not null, 
         region_id int not null
);

desc countries
*/

/*
create table countries (
         country_id int not null unique auto_increment primary key,
         country_name varchar (20) not null,
         region_id int not null
);

desc countries;
*/

create table countries (
         country_id varchar (4) not null unique default ' ',
         country_name varchar (20),
         region_id int not null,
		 primary key  (country_id,region_id)
);
drop table countries;
desc countries;

create table job_history (
		  empolyee_id varchar (5) not null primary key,
          start_date date not null,
          end_date date not null,
          job_id int not null,
          department_id int default null,
          foreign key (job_id) references jobs (job_id)
)Engine=InnoDB ;

desc job_history;
drop table job_history;


/*
create table employees (
		empolyee_id decimal (3,0) not null primary key,
        first_name varchar (10) default null,
        last_name varchar (20) not null,
        email varchar (25) not null,
        phone_number varchar (20) default null,
        hire_date date not null,
        job_id varchar (10) not null,
        salary float default null,
        commission int  default null,
        manager_id decimal(6,0) default null,
        department_id decimal(4,0) default null,
        foreign key (department_id , manager_id ) references departments (department_id , manager_id )
)Engine=InnoDB;

drop table employees;
desc employees;
*/
/*
create table employees (
		empolyee_id decimal (6,0) not null primary key,
        first_name varchar (10) default null,
        last_name varchar (20) not null,
        email varchar (25) not null,
        phone_number varchar (20) default null,
        hire_date date not null,
        job_id varchar (10) not null,
        salary float default null,
        commission int  default null,
        manager_id decimal(6,0) default null,
        department_id decimal(4,0) default null,
        foreign key (department_id ) references departments (department_id ),
	    foreign key (job_id ) references jobs (job_id )

)engine=InnoDB;

desc employees;

*/

/*
create table employees (
            employee_id decimal (6,0) not null primary key,
            first_name varchar (20) default null,
            last_name varchar (25)not null,
            job_id int not null,
            salary decimal (8,2) default null,
            foreign key(job_id)
            references jobs(job_id)
            on delete cascade on update restrict
)engine=InnoDB;

desc employees;

*/
/*
create table employees (
            employee_id decimal (6,0) not null primary key,
            first_name varchar (20) default null,
            last_name varchar (25)not null,
            job_id int,
            salary decimal (8,2) default null,
            foreign key(job_id)
            references jobs(job_id)
            on delete set null 
            on update set null
)engine = InnoDB;

desc employees;

drop table employees;

*/
create table employees (
            employee_id decimal (6,0) not null primary key,
            first_name varchar (20) default null,
            last_name varchar (25)not null,
            job_id int not null,
            salary decimal (8,2) default null,
            foreign key(job_id)
            references jobs(job_id)
            on delete no action 
            on update no action
)engine = InnoDB;

desc employees;