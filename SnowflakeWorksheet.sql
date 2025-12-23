 CREATE OR REPLACE STORAGE INTEGRATION PBI_Integration
  TYPE = EXTERNAL_STAGE
  STORAGE_PROVIDER = 'S3'
  ENABLED = TRUE
  STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::082773927955:role/powerbi.role'
  STORAGE_ALLOWED_LOCATIONS = ('s3://powerbi.one/')
  COMMENT = 'Optional Comment'


  //description Integration Object
  desc integration PBI_Integration;

//drop integration PBI_Integration
create database PowerBI
create schema PBI_Data

create table PCI_Dataset(
    Year int,
    Location string,
    Area int,
    Rainfall float,
    Temperature float,
    Soil_Type string,
    Irrigation string,
    Yields int,
    Humidity float,
    Crops string,
    Price int,
    Season string
)

ALTER TABLE PCI_DATASET RENAME TO PBI_DATASET
select * from PBI_Dataset

create stage POWERBI.PBI_DATA.pbi_stage
url = 's3://powerbi.one'
storage_integration = PBI_Integration


copy into pbi_dataset
from @pbi_stage
file_format=(type=csv field_delimiter=',' skip_header=1)
on_error = continue



CREATE TABLE AGRICULTURE AS
SELECT * FROM PBI_DATASET

select * from agriculture

update agriculture 
set rainfall=1.1*rainfall;

update agriculture 
set area=.9*area;

// year 2004-2009= Y1
// year 2010-2015= Y2
//year 2016-2019= Y3
alter table agriculture 
add Year_Group String;

update agriculture 
set year_group = 'Y1'
where Year >=2004 and Year<=2009

update agriculture 
set year_group = 'Y2'
where Year >=2010 and Year<=2015

update agriculture 
set year_group = 'Y3'
where Year >=2016 and Year<=2019

select * from agriculture

//Rainfall Groups:
//min=255, max=4103
// rainfall 255 to 1200= low
// rainfall 1200 to 3300 = medium
//rainfall 3300 to 4103 = high

alter table agriculture 
add Rainfall_Group String;

update agriculture
set rainfall_group= 'Low'
where rainfall>=255 and rainfall<=1200

update agriculture
set rainfall_group= 'Medium'
where rainfall>1200 and rainfall<=3300

update agriculture
set rainfall_group= 'High'
where rainfall>3300











