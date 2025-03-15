-- task 1

CREATE FUNCTION salom_berish(ism TEXT)
RETURNS TEXT AS $$
BEGIN
    RETURN 'Salom, ' || ism;
END;
$$ LANGUAGE plpgsql;

-- task 2

CREATE FUNCTION getSum(a integer, b integer)
RETURNS integer as $$
BEGIN
    RETURN a + b;
end;
$$ Language plpgsql;

-- task 3

CREATE FUNCTION findOddOrEvenNumber(a integer)
RETURNS text as $$
BEGIN
    IF a % 2 = 0 then
        RETURN a || ' - even number';
    ELSE 
        RETURN a || ' - odd number';
    end IF;
end;
$$ language plpgsql;

-- task 4

CREATE FUNCTION getString(str text, number integer)
RETURNS TEXT as $$
DECLARE result TEXT := '';
i INTEGER;
BEGIN
    IF number <= 0 THEN
        RETURN 'number must be higher than 0';
    END IF;

    FOR i IN 1..number LOOP
        result := result || str || ' ';
    END LOOP;

    RETURN TRIM(result);
END;
$$ language plpgsql;