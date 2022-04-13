create database exercise002DB;

use exercise002DB;
/*
create table locations (
           countries nvarchar(20),
           states varchar(25) not null,
           employees nvarchar(225),
           student varchar(20)
);

alter table locations rename column countries to country_new;

desc locations;

alter table locations add region_id int;

desc locations;

alter table locations add id int not null first;

desc locations;
*/

/*
create table location (
           country_id varchar (20),
		   city nvarchar (25) not null,
           address varchar(40),
           state_province varchar (20)
);

alter table location add region_id int after state_province;

desc location;

alter table location modify country_id int;

desc location;

alter table location drop city;

desc location;

alter table location rename column state_province to state;

alter table location add location_id int not null first;

desc location;

alter table location add primary key (location_id , country_id );

desc location;

alter table location drop primary key;

desc location;
*/

create table jobs (
          job_id int not null primary key ,
          post varchar (25),
          salary nvarchar (35)
);

create table job_history (
      job_id int not null,
      employee_id int (20),
      start_date date,
      hiring_date date
);

drop table jobs;
drop table job_history;

alter table job_history add  foreign key (job_id) references jobs (job_id);

desc job_history;

alter table job_history add constraint fk_job_id foreign key (job_id) references jobs(job_id);

alter table job_history drop foreign key fk_job_id;

desc job_history;

alter table job_history add index index_job_id (job_id);

alter table job_history drop index_job_id;