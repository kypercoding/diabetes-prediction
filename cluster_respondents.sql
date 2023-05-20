-- query intended to extract number of respondents per category per question
SELECT
    Sex,
    SUM(CASE WHEN HighBP = 1 THEN 1 ELSE 0 END) AS "High BP?",
    SUM(CASE WHEN HighBP = 0 THEN 1 ELSE 0 END) AS "No High BP?",

    SUM(CASE WHEN HighChol = 1 THEN 1 ELSE 0 END) AS "High Chol?",
    SUM(CASE WHEN HighChol = 0 THEN 1 ELSE 0 END) AS "No High Chol?",
    
    SUM(CASE WHEN CholCheck = 1 THEN 1 ELSE 0 END) AS "Cholesterol Check?",
    SUM(CASE WHEN CholCheck = 0 THEN 1 ELSE 0 END) AS "No Cholesterol Check?",

    SUM(CASE WHEN Smoker = 1 THEN 1 ELSE 0 END) AS "Smoker?",
    SUM(CASE WHEN Smoker = 0 THEN 1 ELSE 0 END) AS "Non-Smoker?",

    SUM(CASE WHEN Stroke = 1 THEN 1 ELSE 0 END) AS "Stroke?",
    SUM(CASE WHEN Stroke = 0 THEN 1 ELSE 0 END) AS "No Stroke?",

    SUM(CASE WHEN HeartDiseaseorAttack = 1 THEN 1 ELSE 0 END) AS "Heart Problems?",
    SUM(CASE WHEN HeartDiseaseorAttack = 0 THEN 1 ELSE 0 END) AS "No Heart Problems?",

    SUM(CASE WHEN PhysActivity = 1 THEN 1 ELSE 0 END) AS "Physically Active?",
    SUM(CASE WHEN PhysActivity = 0 THEN 1 ELSE 0 END) AS "Not Physically Active?",

    SUM(CASE WHEN Fruits = 1 THEN 1 ELSE 0 END) AS "Eat Fruits?",
    SUM(CASE WHEN Fruits = 0 THEN 1 ELSE 0 END) AS "Don't Eat Fruits?",
    
    SUM(CASE WHEN Veggies = 1 THEN 1 ELSE 0 END) AS "Eat Veggies?",
    SUM(CASE WHEN Veggies = 0 THEN 1 ELSE 0 END) AS "Don't Eat Veggies?",

    SUM(CASE WHEN HvyAlcoholConsump = 1 THEN 1 ELSE 0 END) AS "Heavy drinker?",
    SUM(CASE WHEN HvyAlcoholConsump = 0 THEN 1 ELSE 0 END) AS "Not heavy drinker?",

    SUM(CASE WHEN AnyHealthcare = 1 THEN 1 ELSE 0 END) AS "Have healthcare?",
    SUM(CASE WHEN AnyHealthcare = 0 THEN 1 ELSE 0 END) AS "Don't have healthcare?",

    SUM(CASE WHEN NoDocbcCost = 1 THEN 1 ELSE 0 END) AS "Met Doctor?",
    SUM(CASE WHEN NoDocbcCost = 0 THEN 1 ELSE 0 END) AS "Didn't Meet Doctor?"

FROM "diabetes_binary_5050split_health_indicators_BRFSS2015.csv" WHERE Diabetes_binary = 1
GROUP BY Sex;
