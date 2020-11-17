CREATE TABLE household_member (
    id                     integer primary key GENERATED BY DEFAULT AS IDENTITY
    , household_id         integer   references household (id)
    , sex                  text CHECK (sex in ('M','F'))
    , age_in_months        integer
    , breastfed_YN         boolean
    , lactating_YN         boolean
    , pregnant_YN          boolean
);
COMMENT ON TABLE household_member IS 'The people living in a household and their biological characteristics';
COMMENT ON COLUMN household_member.household_id     IS 'The ID number of the household that this person belongs to';
COMMENT ON COLUMN household_member.sex              IS 'Whether the household member is male or female';
COMMENT ON COLUMN household_member.age_in_months    IS $$The age of the person at the time of the survey. This will be recorded in months for children under 5 years, and in years for older children and adults. We convert it to months for all individuals$$;
COMMENT on COLUMN household_member.breastfed_YN     IS 'Whether the child is being breastfed; "true" indicates that they do';
COMMENT on COLUMN household_member.lactating_YN     IS 'Whether this woman is lactating; "true" indicates that she is';
COMMENT on COLUMN household_member.pregnant_YN      IS 'Whether this woman is pregnant; "true" indicates that she is';
