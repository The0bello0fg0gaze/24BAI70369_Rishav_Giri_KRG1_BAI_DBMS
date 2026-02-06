DO $$ 
DECLARE 
    num INTEGER := -5; 
BEGIN 
    IF num > 0 THEN 
        RAISE NOTICE 'The number % is positive.', num; 
    ELSE 
        RAISE NOTICE 'The number % is non-positive.', num; 
    END IF; 
END $$;
DO $$ 
DECLARE 
    marks INTEGER := 85; 
BEGIN 
    IF marks >= 90 THEN 
        RAISE NOTICE 'Grade: A+ | Status: Excellent'; 
    ELSIF marks >= 80 THEN 
        RAISE NOTICE 'Grade: A | Status: Very Good'; 
    ELSIF marks >= 60 THEN 
        RAISE NOTICE 'Grade: B | Status: Satisfactory'; 
    ELSE 
        RAISE NOTICE 'Grade: F | Status: Needs Improvement'; 
    END IF; 
END $$;
DO $$ 
DECLARE 
    day_num INTEGER := 3; 
    day_name VARCHAR(20); 
BEGIN 
    day_name := CASE day_num 
        WHEN 1 THEN 'Monday' 
        WHEN 2 THEN 'Tuesday' 
        WHEN 3 THEN 'Wednesday' 
        WHEN 4 THEN 'Thursday' 
        WHEN 5 THEN 'Friday' 
        WHEN 6 THEN 'Saturday' 
        WHEN 7 THEN 'Sunday' 
        ELSE 'Invalid Day Number' 
    END; 
    RAISE NOTICE 'Input Number: %, Day Name: %', day_num, day_name; 
END $$;
