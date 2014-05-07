Truncate Category;
Truncate Group_details;
truncate AD_DATA;

insert into CATEGORY (Cat_Desc) values ("Vehicles");
insert into CATEGORY (Cat_Desc) values ("Property");
insert into CATEGORY (Cat_Desc) values ("Misc");
insert into CATEGORY (Cat_Desc) values ("Books");



insert into GROUP_DETAILS (Grp_Name, Grp_Desc) values ("CTL", "CenturyLink Employees");
insert into GROUP_DETAILS (Grp_Name, Grp_Desc) values ("NirupamVatika", "Nirupam Vatika Residents");



insert into AD_DATA values (2,2, "First Ad", "This is first Ad");