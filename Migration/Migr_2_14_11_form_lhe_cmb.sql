-- FUNCTION: public.form_lhe_cmb_insert_gest()

-- DROP FUNCTION IF EXISTS public.form_lhe_cmb_insert_gest();

CREATE OR REPLACE FUNCTION public.form_lhe_cmb_insert_gest()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN
INSERT INTO public."Obs_Point" ( "ID_OBS",geom,"Utilisateur","Type_OBS")
VALUES (NEW."ID_OBS",NEW.geom,NEW."Utilisateur",NEW."Type_OBS");

INSERT INTO public."Evenement" ("ID_EVEN","ID_Employ","ID_Proprio","ID_Proj","Verif_Err","ID_OBS_P","Heure","Date","Utilisateur","Comment","Type_Obs","ID_Station","ID_Licence","Proprio_donnee","Prive")
VALUES (NEW."ID_EVEN",NEW."ID_Employ",NEW."ID_Proprio",NEW."ID_Proj",NEW."Verif_Err",NEW."ID_OBS_P",NEW."Heure",NEW."Date",NEW."Utilisateur",NEW."Comment",NEW."Type_Obs",NEW."ID_Station",NEW."ID_Licence",NEW."Proprio_donnee",NEW."Prive");

INSERT INTO public."Form_LHE" ("ID_LHE", "ID_EVEN", "Station", "TypeMilieu", "EchancSol", "RacineNue", "SolDenude", "Debris", "MarquesLineaire", "Lichen", "LimiteLitiere", "Mousses", "Limite_Sup", "Limite_Inf", "PositionLHE", "RiveOppos", "NivConfiance", "LocalPrecis", "Comment", "Utilisateur")
VALUES (NEW."ID_LHE", NEW."ID_EVEN", NEW."Station", NEW."TypeMilieu", NEW."EchancSol", NEW."RacineNue", NEW."SolDenude", NEW."Debris", NEW."MarquesLineaire", NEW."Lichen", NEW."LimiteLitiere", NEW."Mousses", NEW."Limite_Sup", NEW."Limite_Inf", NEW."PositionLHE", NEW."RiveOppos", NEW."NivConfiance", NEW."LocalPrecis", NEW.comment_lhe, NEW."Utilisateur");

RETURN NEW;
END;
$BODY$;

ALTER FUNCTION public.form_lhe_cmb_insert_gest()
    OWNER TO doadmin;

-- FUNCTION: public.form_lhe_cmb_update_gest()

-- DROP FUNCTION IF EXISTS public.form_lhe_cmb_update_gest();

CREATE OR REPLACE FUNCTION public.form_lhe_cmb_update_gest()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN

UPDATE public."Obs_Point"
SET 
geom = NEW.geom,
"Utilisateur" = NEW."Utilisateur",
"Type_OBS" = NEW."Type_OBS"
WHERE "ID_OBS" = OLD."ID_OBS";

UPDATE public."Evenement"
SET
"ID_Employ" = NEW."ID_Employ",
"ID_Proprio" = NEW."ID_Proprio",
"ID_Proj" = NEW."ID_Proj",
"Verif_Err" = NEW."Verif_Err",
"ID_OBS_P" = NEW."ID_OBS_P",
"Heure" = NEW."Heure",
"Date" = NEW."Date",
"Utilisateur" = NEW."Utilisateur",
"Comment" = NEW."Comment",
"Type_Obs" = NEW."Type_Obs",
"ID_Station" = NEW."ID_Station",
"ID_Licence" = NEW."ID_Licence",
"Proprio_donnee" = NEW."Proprio_donnee",
"Prive" = NEW."Prive"
WHERE "ID_EVEN" = OLD."ID_EVEN";

UPDATE public."Form_LHE"
SET
"ID_LHE" = NEW."ID_LHE",
"ID_EVEN" = NEW."ID_EVEN",
"Station" = NEW."Station",
"TypeMilieu" = NEW."TypeMilieu",
"EchancSol" = NEW."EchancSol",
"RacineNue" = NEW."RacineNue",
"SolDenude" = NEW."SolDenude",
"Debris" = NEW."Debris",
"MarquesLineaire" = NEW."MarquesLineaire",
"Lichen" = NEW."Lichen",
"LimiteLitiere" = NEW."LimiteLitiere",
"Mousses" = NEW."Mousses",
"Limite_Sup" = NEW."Limite_Sup",
"Limite_Inf" = NEW."Limite_Inf",
"PositionLHE" = NEW."PositionLHE",
"RiveOppos" = NEW."RiveOppos",
"NivConfiance" = NEW."NivConfiance",
"LocalPrecis" = NEW."LocalPrecis",
"Comment" = NEW.comment_lhe,
"Utilisateur" = NEW."Utilisateur"
WHERE "ID_LHE" = OLD."ID_LHE";

RETURN NEW;
END;
$BODY$;

ALTER FUNCTION public.form_lhe_cmb_update_gest()
    OWNER TO doadmin;
-- FUNCTION: public.form_lhe_cmb_delete_gest()

-- DROP FUNCTION IF EXISTS public.form_lhe_cmb_delete_gest();

CREATE OR REPLACE FUNCTION public.form_lhe_cmb_delete_gest()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN

DELETE FROM public."Obs_Point"
WHERE "ID_OBS" = OLD."ID_OBS";

DELETE FROM public."Evenement"
WHERE "ID_EVEN" = OLD."ID_EVEN";

DELETE FROM public."Form_LHE"
WHERE "ID_LHE" = OLD."ID_LHE";

RETURN OLD;
END;
$BODY$;

ALTER FUNCTION public.form_lhe_cmb_delete_gest()
    OWNER TO doadmin;

	
-- View: public.form_lhe_cmb_v

-- DROP VIEW public.form_lhe_cmb_v;

CREATE OR REPLACE VIEW public.form_lhe_cmb_v
 AS
 SELECT a."ID_OBS",
    a.geom,
    a.date,
    a.heure,
    a.rel_id,
    a."Type_OBS",
    b."ID_LHE",
    b."ID_EVEN" AS even_lhe,
    b."Station",
    b."TypeMilieu",
    b."EchancSol",
    b."RacineNue",
    b."SolDenude",
    b."Debris",
    b."MarquesLineaire",
    b."Lichen",
    b."LimiteLitiere",
    b."Mousses",
    b."Limite_Sup",
    b."Limite_Inf",
    b."PositionLHE",
    b."RiveOppos",
    b."NivConfiance",
    b."LocalPrecis",
    b."Comment" AS comment_lhe,
    c."ID_EVEN",
    c."ID_Employ",
    c."ID_Proprio",
    c."ID_Proj",
    c."Verif_Err",
    c."ID_OBS_P",
    c."ID_OBS_L",
    c."ID_OBS_S",
    c."Heure",
    c."Date",
    c."Utilisateur",
    c."Comment",
    c."Type_Obs",
    c."ID_Station",
    c."ID_Licence",
    c."Proprio_donnee",
    c."Prive"
   FROM "Form_LHE" b
     JOIN "Evenement" c ON b."ID_EVEN" = c."ID_EVEN"
     JOIN "Obs_Point" a ON a."ID_OBS" = c."ID_OBS_P"
  WHERE c."Utilisateur" ~~ concat(USER, '%') OR replace(USER::text, "substring"(USER::text, "position"(USER::text, '_'::text)), ''::text) = c."Utilisateur";

ALTER TABLE public.form_lhe_cmb_v
    OWNER TO doadmin;
COMMENT ON VIEW public.form_lhe_cmb_v
    IS 'Vue combinée pour Form_LHE';

GRANT ALL ON TABLE public.form_lhe_cmb_v TO doadmin;
GRANT ALL ON TABLE public.form_lhe_cmb_v TO geof_maitre;
GRANT INSERT, DELETE, SELECT, UPDATE ON TABLE public.form_lhe_cmb_v TO geof_utilisateur;


CREATE OR REPLACE TRIGGER form_lhe_cmb_delete_tr
    INSTEAD OF DELETE
    ON public.form_lhe_cmb_v
    FOR EACH ROW
    EXECUTE FUNCTION public.form_lhe_cmb_delete_gest();


CREATE OR REPLACE TRIGGER form_lhe_cmb_insert_tr
    INSTEAD OF INSERT
    ON public.form_lhe_cmb_v
    FOR EACH ROW
    EXECUTE FUNCTION public.form_lhe_cmb_insert_gest();


CREATE OR REPLACE TRIGGER form_lhe_cmb_update_tr
    INSTEAD OF UPDATE 
    ON public.form_lhe_cmb_v
    FOR EACH ROW
    EXECUTE FUNCTION public.form_lhe_cmb_update_gest();