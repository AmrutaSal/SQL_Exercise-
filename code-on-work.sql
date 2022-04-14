USE exercises;

alter table `countries` add unique (`COUNTRY_ID`);

desc `countries`;

drop table `countries`;
 alter table `countries` add unique auto_increment (`COUNTRY_ID`);


alter table `countries` add primary key (`COUNTRY_ID`,`REGION_ID`);

desc `countries`;

alter table `job_history` add foreign key (`JOB_ID`) references `jobs`(`JOB_ID`);

desc `job_history`;

alter table `employees` add foreign key (`DEPARTMENT_ID`, `MANAGER_ID`) references `departments` (`DEPARTMENT_ID`, `MANAGER_ID`);

desc `employees`;

alter table `employees` add foreign key(`JOB_ID`) references `jobs`(`JOB_ID`);

desc `employees`;

alter table `employees` add foreign key(`JOB_ID`) references `jobs`(`JOB_ID`) on delete cascade on update restrict;

desc `employees`;

alter table `employees` add foreign key(`JOB_ID`) references `jobs`(`JOB_ID`) on delete set null on update set null;

desc `employees`;

alter table `countries` rename country_new;

alter table  `locations` add `REGION_ID` int ;

desc`locations`;

alter table `locations` add `ID` int first;

desc`locations`;

alter table  `locations` add `REGION_ID` int after `STATE_PROVINCE`;
drop  table `locations`;

desc`locations`;

alter table  `locations` modify  `COUNTRY_ID` int ;

desc `locations`;

alter table `locations` drop   `CITY` ;

desc `locations`;

alter table  `locations` drop `STATE_PROVINCE` ,add `STATE` varchar(20) after `CITY`;

desc `locations`;

alter table  `locations` add  primary key (`LOCATION_ID`);

desc `locations`;

alter table  `locations` add  primary key (`LOCATION_ID`,`COUNTRY_ID`);

desc `locations`;

alter table `locations` drop primary key ;

alter table `job_history` add foreign key (`JOB_ID`) references `jobs`(`JOB_ID`);

alter table `job_history` add constraint fk_job_id foreign key (`JOB_ID`) references `jobs`(`JOB_ID`) on update restrict on delete cascade;

desc `job_history`;

alter table `job_history` drop foreign key fk_job_id;

alter table `job_history` add index indx_job_id (`JOB_ID`);

alter table `job_history` drop index indx_job_id ;


