COMMENT ON TABLE FOODITEM IS 'Table of food items and their micronutrient contents' ;
-- Note, for all comments, make sure to include the full name of the unit and to spell out any abbreviations and acronyms.
COMMENT ON COLUMN FOODITEM.Original_Food_Id               IS 'The food ID as it was found in the original Food Composition Table. Kept for informational purposes only';
COMMENT ON COLUMN FOODITEM.Original_Food_Name             IS 'The food name as it was found in the original Food Composition Table. This in constrast to the Food_Name column, which comes from a standardised list of foods. Kept for informational purposes only';
COMMENT ON COLUMN FOODITEM.food_genus_id                  IS 'Foreign key to the corresponding entry in the food_genus2 table. To which food_genus2 food does this entry best correspond to?';
COMMENT ON COLUMN FOODITEM.FCT_SOURCE_ID                  IS 'Foreign Key to the Food Composition Table from which this food came';
COMMENT ON COLUMN FOODITEM.DATA_REFERENCE_ID              IS 'The publication in which the micronutrient contents of this food were found. Taken from the Food Composition Table';
COMMENT ON COLUMN FOODITEM.Food_Group                     IS ' ';
COMMENT ON COLUMN FOODITEM.Moisture_in_g                  IS 'The moisture content of this food item, in grams per 100g';
COMMENT ON COLUMN FOODITEM.Energy_in_kCal                 IS ' ';
COMMENT ON COLUMN FOODITEM.Energy_in_kJ                   IS ' ';
COMMENT ON COLUMN FOODITEM.Nitrogen_in_g                  IS 'Nitrogen content of this fooditem, in grams per 100g';
COMMENT ON COLUMN FOODITEM.TotalProtein_in_g              IS 'Total Protein Content, in grams per 100g';
COMMENT ON COLUMN FOODITEM.TotalFats_in_g                 IS 'Total Fats, in grams per 100g';
COMMENT ON COLUMN FOODITEM.SaturatedFA_in_g               IS 'Saturated Fatty Acids, in grams per 100g';
COMMENT ON COLUMN FOODITEM.MonounsaturatedFA_in_g         IS 'Monounsaturated Fatty Acids, in grams per 100g';
COMMENT ON COLUMN FOODITEM.PolyunsaturatedFA_in_g         IS 'Polyunsaturated Fatty Acids, in grams per 100g';
COMMENT ON COLUMN FOODITEM.Cholesterol_in_mg              IS 'The Cholesterol content of this food item, in milligrams per 100g';
COMMENT ON COLUMN FOODITEM.Carbohydrateavailable_in_g     IS ' ';
COMMENT ON COLUMN FOODITEM.Fibre_in_g                     IS 'The total dietary fibre content of this food item (determined by multiple methods), in grams per 100g';
COMMENT ON COLUMN FOODITEM.Ash_in_g                       IS ' ';
COMMENT ON COLUMN FOODITEM.Ca_in_mg                       IS 'The Calcium content of this food item, in milligrams per 100g';
COMMENT ON COLUMN FOODITEM.Fe_in_mg                       IS 'The Iron content of this food item, in milligrams per 100g';
COMMENT ON COLUMN FOODITEM.Mg_in_mg                       IS 'The Magnesium content of this food item, in milligrams per 100g';
COMMENT ON COLUMN FOODITEM.P_in_mg                        IS 'The Phosporous content of the food item, in milligrams per 100g';
COMMENT ON COLUMN FOODITEM.K_in_mg                        IS 'The Potassium content of this food item, in milligrams per 100g';
COMMENT ON COLUMN FOODITEM.Na_in_mg                       IS 'The Sodium content of this food item, in milligrams per 100g';
COMMENT ON COLUMN FOODITEM.Zn_in_mg                       IS 'The Zinc content of this food item, in milligrams per 100g';
COMMENT ON COLUMN FOODITEM.Cu_in_mg                       IS 'The Copper content of this food item, in milligrams per 100g';
COMMENT ON COLUMN FOODITEM.Mn_in_mcg                      IS 'The Manganese content of this food item, in micrograms per 100g';
COMMENT ON COLUMN FOODITEM.I_in_mcg                       IS 'the Iondine content of this food item, in micrograms per 100g';
COMMENT ON COLUMN FOODITEM.Se_in_mcg                      IS 'The Selenium content of this food item, in micrograms per 100g';
COMMENT ON COLUMN FOODITEM.VitaminA_in_RAE_in_mcg         IS 'The Vitamin A content of the food, in Retinol Activity Equivalent (RAE), and in micrograms per 100g';
COMMENT ON COLUMN FOODITEM.Thiamin_in_mg                  IS 'The Thiamin content of this food item, in milligrams per 100g';
COMMENT ON COLUMN FOODITEM.Riboflavin_in_mg               IS 'The Riboflavin content of this food item, in milligrams per 100g';
COMMENT ON COLUMN FOODITEM.Niacin_in_mg                   IS 'The Niacin content of this food item, in milligrams per 100g';
COMMENT ON COLUMN FOODITEM.VitaminB6_in_mg                IS 'The Vitamin B6 content of this food item, in milligrams per 100g';
COMMENT ON COLUMN FOODITEM.Folicacid_in_mcg               IS 'The Folic Acid content of this food item, in micrograms per 100g';
COMMENT ON COLUMN FOODITEM.Folate_in_mcg                  IS 'The total folate content of this food item, including food folate and synthetic folate, in micrograms per 100g';
COMMENT ON COLUMN FOODITEM.VitaminB12_in_mcg              IS 'The Vitamin B12 content of this food item, in micrograms per 100g';
COMMENT ON COLUMN FOODITEM.Pantothenate_in_mg             IS 'The Pantothenate content of this food item, in milligrams per 100g';
COMMENT ON COLUMN FOODITEM.Biotin_in_mcg                  IS 'The Biotin content of this food item, in micrograms per 100g';
COMMENT ON COLUMN FOODITEM.VitaminC_in_mg                 IS 'The Vitamin C content of this food item, in milligrams per 100g';
COMMENT ON COLUMN FOODITEM.VitaminD_in_mcg                IS 'The Vitamin D content of this food item, in micrograms per 100g';
COMMENT ON COLUMN FOODITEM.VitaminE_in_mg                 IS 'The Vitamin E content of this food item, in milligrams per 100g';
COMMENT ON COLUMN FOODITEM.PhyticAcid_in_mg               IS 'The Phytic Acid content of this food item, in milligrams per 100g';
