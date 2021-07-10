create
or replace materialized view household_deficiency_aggregation as
select
    survey_id,
    fct_source_id,
    subregion_id,
    subregion_name,
    ST_AsGeoJSON(geometry) as geometry,
    micronutrient_id,
    unit,
    median(micronutrient_supply) as median_supply,
    count(household_id) as household_count,
    count(household_id) filter (
        where
            deficient
    ) as deficient_count,
    round(
        (
            (
                count(household_id) filter (
                    where
                        deficient
                )
            ) :: numeric /(count(household_id))
        ) * 100,
        2
    ) as deficient_percentage
from
    household_intake_deficiency_pivot hidp
    join micronutrient m on hidp.micronutrient_id = m.id
    join subregion s on s.id = hidp.subregion_id
group by
    survey_id,
    fct_source_id,
    subregion_id,
    subregion_name,
    geometry,
    micronutrient_id,
    m.unit