CREATE TABLE household_member (
    id                     integer primary key GENERATED BY DEFAULT AS IDENTITY
    , household_id         bigint  references household (id)
    , original_id          text
    , sex                  text CHECK (sex in ('m','f'))
    , education_level      text CHECK (education_level IN ('none', 'primary', 'secondary', 'tertiary'))
    , age_in_months        integer
    , is_breastfed         boolean
    , is_lactating         boolean
    , is_pregnant          boolean
    , is_smoker            boolean
    , had_illness          boolean
    , had_malaria          boolean
    , had_diarrhoea        boolean
    , survey_cluster       text
    , survey_strata        integer
    , survey_weight        integer
	, literacy             text
	, weight_in_kg         numeric
	, height_in_cm         numeric
	, bmi                  numeric GENERATED ALWAYS AS (weight_in_kg/((height_in_cm/100)*(height_in_cm/100))) STORED
);
COMMENT ON TABLE household_member IS 'The people living in a household and their biological characteristics';
COMMENT ON COLUMN household_member.household_id     IS 'The ID number of the household that this person belongs to';
COMMENT ON COLUMN household_member.household_id     IS 'The original identification number of this person';
COMMENT ON COLUMN household_member.sex              IS 'Whether the household member is male or female';
COMMENT ON COLUMN household_member.education_level  IS 'The highest level of education achieved by this person. Can be primary, secondary, or tertiary education';
COMMENT ON COLUMN household_member.age_in_months    IS 'The age of the person at the time of the survey, in months. Ages for individuals older than 5 years are likely to be calculated from the age in years';
COMMENT on COLUMN household_member.is_breastfed     IS 'Whether the child is being breastfed; "true" indicates that they are';
COMMENT on COLUMN household_member.is_lactating     IS 'Whether this woman is lactating; "true" indicates that she is';
COMMENT on COLUMN household_member.is_pregnant      IS 'Whether this woman is pregnant; "true" indicates that she is';
COMMENT on COLUMN household_member.is_smoker        IS 'Whether this person smokes tobacco';
COMMENT on COLUMN household_member.had_illness      IS 'Whether this person has been ill in the last two weeks';
COMMENT on COLUMN household_member.had_malaria      IS 'Whether this person has had malaria in the last two weeks';
COMMENT on COLUMN household_member.had_diarrhoea    IS 'Whether this person has had diarrhoea in the last two weeks';
COMMENT on COLUMN household_member.survey_cluster   IS 'The surveying cluster used for selecting this individual'; -- TODO: more info
COMMENT on COLUMN household_member.survey_strata    IS 'The surveying strata used for selecting this individual';  -- TODO: more info
COMMENT on COLUMN household_member.survey_weight    IS 'The surveying weight used for selecting this individual';  -- TODO: more info
COMMENT on COLUMN household_member.weight_in_kg     IS 'The weight of the person in kilograms';
COMMENT on COLUMN household_member.height_in_cm     IS 'The height of the person in centimetres';
COMMENT on COLUMN household_member.bmi				IS 'The body mass index of the person calculated from weight and height as weight in kg/height in metres squared';

