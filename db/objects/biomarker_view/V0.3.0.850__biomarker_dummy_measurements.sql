update household SET survey_id = 10 WHERE id = 1;
update household SET survey_id = 10 WHERE id = 2;
update household SET survey_id = 20 WHERE id = 3;

insert into biomarker_measurement (id, household_member_id, zinc) VALUES(1, 1, 60.0);
insert into biomarker_measurement (id, household_member_id, zinc) VALUES(2, 2, 72.0);
insert into biomarker_measurement (id, household_member_id, zinc) VALUES(3, 3, 73.0);
insert into biomarker_measurement (id, household_member_id, zinc) VALUES(4, 4, 55.0);
insert into biomarker_measurement (id, household_member_id, zinc) VALUES(5, 5, 60.0);
insert into biomarker_measurement (id, household_member_id, zinc) VALUES(6, 6, 74.0);
insert into biomarker_measurement (id, household_member_id, zinc) VALUES(7, 7, 73.0);
insert into biomarker_measurement (id, household_member_id, zinc) VALUES(8, 8, 99.0);
insert into biomarker_measurement (id, household_member_id, zinc) VALUES(9, 9, 80.0);