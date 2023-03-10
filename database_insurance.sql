create database insurance;

use insurance;
create table person (driver_id int, name char, address varchar(20), primary key(driver_id));
create table car (license int, model varchar(20), year int, primary key(license));
create table accident (report_no int, date char, location char, primary key(report_no));
create table owns (driver_id int, license int, primary key(driver_id,license));
create table participated (report_no int, license int, driver_id int, damage_amt int, primary key(report_no,license));

alter table owns add foreign key(driver_id) references person(driver_id);
alter table owns add foreign key(license) references car(license);
alter table participated add foreign key(report_no) references accident(report_no);

alter table car rename to vehicle;

alter table accident change column report_no report_number int;

alter table person add column gender int;

alter table accident drop column location;

alter table participated modify column damage_amt numeric(5,3);

#desc person;
#desc car;
#desc accident;
#desc owns;
#desc participated;
