CREATE TABLE household (
	id                            integer primary key
	, location                    geometry(Point,4326)
	, urbanity                    text   --- urban, rural, unknown
	-- , household_size              integer
	, household_expenditure       integer
	, wealth_quintile             integer
	, survey_id                   integer NOT NULL REFERENCES survey(id)
);

COMMENT ON TABLE Household IS 'A household is a grouping of people that live together and can be treated as a unit for certain pruposes. For example, we may have data on what foods a household as a whole consumed, rather than for individual people who live in that household';
COMMENT on column household.urbanity              IS 'Whether this household is located in an urban or rural area';
COMMENT on column household.household_expenditure IS 'How much money this household spends per month, in local currency';
COMMENT on column household.wealth_quintile       IS 'In what quintile of househol wealth this household is (5=richest, 1=poorest)';
COMMENT on column household.survey_id             IS 'In which survey this household was interviewed';
