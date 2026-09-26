-- FUNCTION: public.fill_even_id_from_parent()

-- DROP FUNCTION IF EXISTS public.fill_even_id_from_parent();

CREATE OR REPLACE FUNCTION public.fill_even_id_from_parent()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
DECLARE
    parent_table TEXT := TG_ARGV[0];
    parent_fk_column TEXT := TG_ARGV[1];
    child_table TEXT := TG_TABLE_NAME;
    parent_fk_value UUID;
    parent_even_id UUID;
BEGIN
    IF NEW.even_id IS NOT NULL THEN
        RETURN NEW;
    END IF;
    
    EXECUTE format('SELECT ($1).%I', parent_fk_column) 
        INTO parent_fk_value USING NEW;
    
    IF parent_fk_value IS NULL THEN
        RETURN NEW;
    END IF;
    
    EXECUTE format('SELECT even_id FROM %I WHERE id = $1', parent_table)
        INTO parent_even_id USING parent_fk_value;
    
    IF parent_even_id IS NOT NULL THEN
        EXECUTE format('UPDATE %I SET even_id = $1 WHERE id = $2', child_table)
            USING parent_even_id, NEW.id;
    END IF;
    
    RETURN NEW;
END;
$BODY$;

ALTER FUNCTION public.fill_even_id_from_parent()
    OWNER TO doadmin;
