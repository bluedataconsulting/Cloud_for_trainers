show global variables like "local_infile";
set global local_infile=1;
show global variables like "local_infile";
CREATE database L3;
use L3;
CREATE TABLE Rcpp_downloads_record(
date VARCHAR(12) NULL,
time VARCHAR(12) NULL,
size INT NULL,
r_version VARCHAR(12) NULL,
r_arch VARCHAR(12) NULL,
r_os VARCHAR(20) NULL,
package VARCHAR(30) NULL,
version VARCHAR(20) NULL,
country VARCHAR(20) NULL,
ip_id INT NULL
);

load data local infile "C:/Users/Lenovo/Desktop/Work/Cloud/Module2/Rcpp_downloads_record.csv" into table Rcpp_downloads_record
character set latin1 fields terminated by ',' enclosed by '"' lines terminated by "\r\n" ignore 1 lines
(date,time,size,r_version,r_arch,r_os,package,version,country,ip_id);

SELECT * FROM Rcpp_downloads_record;
