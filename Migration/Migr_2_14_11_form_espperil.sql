-- CHANGER les permisssions des couches pour autoriser geof_utilisateur à INSERT\UPDATE\DELETE
GRANT INSERT, DELETE, SELECT, UPDATE ON TABLE public."FormSect_Pression" TO geof_utilisateur;
-- Il faudra faire des modifications pour le transposer à la V3. Relations en BD, text to uuid, noms de colonnes...

ALTER TABLE "Obs_Ligne" ADD COLUMN rel_id text;
ALTER TABLE "Obs_Point" ADD COLUMN rel_id text;
ALTER TABLE "Obs_Poly" ADD COLUMN rel_id text;
ALTER TABLE "Form_ActDetection" ADD COLUMN nb_observ bigint;
ALTER TABLE "Form_ActDetection" ADD COLUMN min_pers bigint;
ALTER TABLE "Form_ActDetection" ADD COLUMN nom_observ text;
ALTER TABLE "Form_DescEnviro" ADD COLUMN actdetect_id text; 
ALTER TABLE "Form_DescEnviro" ADD COLUMN espece_id text; 
ALTER TABLE "Form_DescEnviro" ADD COLUMN type_couvert text; 
ALTER TABLE "Form_DescEnviro" ADD COLUMN densite_couvert text; 
ALTER TABLE "Form_DescEnviro" ADD COLUMN exposition text; 
ALTER TABLE "Form_DescEnviro" ADD COLUMN pier_adon text; 
ALTER TABLE "Form_DescEnviro" ADD COLUMN pier_dim text; 
ALTER TABLE "Form_DescEnviro" ADD COLUMN position_topo text; 
ALTER TABLE "Form_DescEnviro" ADD COLUMN declivite text; 
ALTER TABLE "Form_DescEnviro" ADD COLUMN regime_hyd text; 
ALTER TABLE "Form_DescEnviro" ADD COLUMN mod_drain text; 
ALTER TABLE "Form_DescEnviro" ADD COLUMN recouv_arbo text; 
ALTER TABLE "Form_DescEnviro" ADD COLUMN recouv_arbu text; 
ALTER TABLE "Form_DescEnviro" ADD COLUMN recouv_herb text; 
ALTER TABLE "Form_DescEnviro" ADD COLUMN recouv_musc text; 
ALTER TABLE "Form_DescEnviro" ADD COLUMN recouv_lich text; 
ALTER TABLE "Form_DescEnviro" ADD COLUMN recouv_affl text; 
ALTER TABLE "Form_DescEnviro" ADD COLUMN recouv_bloc text; 
ALTER TABLE "Form_DescEnviro" ADD COLUMN recouv_nu text; 
ALTER TABLE "Form_DescEnviro" ADD COLUMN recouv_eau text; 
ALTER TABLE "Form_DescEnviro" ADD COLUMN recouv_lit text; 
ALTER TABLE "Form_DescEnviro" ADD COLUMN comment text;
ALTER TABLE "Form_EEE" ADD COLUMN unite text;
ALTER TABLE "Form_EEE" ADD COLUMN espperil_id text;
ALTER TABLE "FormSect_Pression" ADD COLUMN actdetect_id text;
ALTER TABLE "FormSect_Pression" ADD COLUMN obs_id text;
ALTER TABLE "FormSect_Pression" ADD COLUMN etat_men text;
ALTER TABLE "FormSect_Pression" ADD COLUMN comment text;
ALTER TABLE "FormSect_Pression" ADD COLUMN even_id text;
ALTER TABLE "FormSect_Pression" ADD COLUMN espperil_id text;


-- Création des vues qui composent le nouveau formulaire
-- View: public.form_espperil_v

-- DROP VIEW public.form_espperil_v;

CREATE OR REPLACE VIEW public.form_espperil_v
 AS
 SELECT "ID_Desc",
    "Utilisateur",
    "ID_EVEN",
    "Menace",
    actdetect_id,
    espece_id,
    type_couvert,
    densite_couvert,
    exposition,
    pier_adon,
    pier_dim,
    position_topo,
    declivite,
    regime_hyd,
    mod_drain,
    recouv_arbo,
    recouv_arbu,
    recouv_herb,
    recouv_musc,
    recouv_lich,
    recouv_affl,
    recouv_bloc,
    recouv_nu,
    recouv_eau,
    recouv_lit,
    comment
   FROM "Form_DescEnviro"
  WHERE "Utilisateur" ~~ concat(USER, '%') OR replace(USER::text, "substring"(USER::text, "position"(USER::text, '_'::text)), ''::text) = "Utilisateur";

ALTER TABLE public.form_espperil_v
    OWNER TO doadmin;
COMMENT ON VIEW public.form_espperil_v
    IS 'Provient de Description de l''environnement';

GRANT ALL ON TABLE public.form_espperil_v TO doadmin;
GRANT INSERT, SELECT ON TABLE public.form_espperil_v TO geof_invite;
GRANT ALL ON TABLE public.form_espperil_v TO geof_maitre;
GRANT INSERT, DELETE, SELECT, UPDATE ON TABLE public.form_espperil_v TO geof_utilisateur;


-- View: public.form_menace_v

-- DROP VIEW public.form_menace_v;

CREATE OR REPLACE VIEW public.form_menace_v
 AS
 SELECT a."ID_OBS",
    a.geom,
    a.date,
    a.heure,
    a.rel_id,
    b.id_press,
    b.type_press,
    b.actdetect_id,
    b.obs_id,
    b.even_id,
    b.utilisateur,
    b.etat_men,
    b.comment,
    b.espperil_id
   FROM "FormSect_Pression" b
     JOIN "Obs_Point" a ON a.rel_id = b.id_press
  WHERE b.utilisateur ~~ concat(USER, '%') OR replace(USER::text, "substring"(USER::text, "position"(USER::text, '_'::text)), ''::text) = b.utilisateur;

ALTER TABLE public.form_menace_v
    OWNER TO doadmin;

GRANT ALL ON TABLE public.form_menace_v TO doadmin;
GRANT INSERT, SELECT ON TABLE public.form_menace_v TO geof_invite;
GRANT ALL ON TABLE public.form_menace_v TO geof_maitre;
GRANT INSERT, DELETE, SELECT, UPDATE ON TABLE public.form_menace_v TO geof_utilisateur;


-- View: public.form_espperil_esp_v

-- DROP VIEW public.form_espperil_esp_v;

CREATE OR REPLACE VIEW public.form_espperil_esp_v
 AS
 SELECT a."ID_OBS",
    a.geom,
    a.date,
    a.heure,
    a.rel_id,
    b."ID_EEE",
    b."ID_EVEN",
    b."Utilisateur",
    b."EEE_Type",
    b."NbrVeg",
    b.unite,
    b."EEE_Densite",
    b."Sup_m2",
    b."StadeDev",
    b.espperil_id
   FROM "Form_EEE" b
     JOIN "Obs_Point" a ON a.rel_id = b."ID_EEE"
  WHERE b."Utilisateur" ~~ concat(USER, '%') OR replace(USER::text, "substring"(USER::text, "position"(USER::text, '_'::text)), ''::text) = b."Utilisateur";

ALTER TABLE public.form_espperil_esp_v
    OWNER TO doadmin;
COMMENT ON VIEW public.form_espperil_esp_v
    IS 'Provient du formulaire EEE';

GRANT ALL ON TABLE public.form_espperil_esp_v TO doadmin;
GRANT INSERT, SELECT ON TABLE public.form_espperil_esp_v TO geof_invite;
GRANT ALL ON TABLE public.form_espperil_esp_v TO geof_maitre;
GRANT INSERT, DELETE, SELECT, UPDATE ON TABLE public.form_espperil_esp_v TO geof_utilisateur;

--Création des triggers sur les vues

-- FUNCTION: public.form_espperil_esp_delete_gest()

-- DROP FUNCTION IF EXISTS public.form_espperil_esp_delete_gest();

CREATE OR REPLACE FUNCTION public.form_espperil_esp_delete_gest()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN

DELETE FROM public."Obs_Point"
WHERE "ID_OBS" = OLD."ID_OBS";

DELETE FROM public."Form_EEE"
WHERE "ID_EEE" = OLD."ID_EEE";

DELETE FROM public."Evenement"
WHERE "ID_EVEN" = OLD."even_id";

RETURN OLD;
END;
$BODY$;

ALTER FUNCTION public.form_espperil_esp_delete_gest()
    OWNER TO doadmin;

-- FUNCTION: public.form_espperil_esp_insert_gest()

-- DROP FUNCTION IF EXISTS public.form_espperil_esp_insert_gest();

CREATE OR REPLACE FUNCTION public.form_espperil_esp_insert_gest()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN
INSERT INTO public."Obs_Point" ( "ID_OBS",
   geom,
   date,
   heure,"Utilisateur","Type_OBS",rel_id)
VALUES (NEW."ID_OBS",
   NEW.geom,
   NEW.date,
   NEW.heure,NEW."Utilisateur",'Point',NEW."ID_EEE"
	);

INSERT INTO public."Form_EEE" ("ID_EEE",
    "ID_EVEN",
    "Utilisateur",
    "EEE_Type",
    "NbrVeg",
    unite,
    "EEE_Densite",
    "Sup_m2",
    "StadeDev",
	espperil_id)
VALUES(NEW."ID_EEE",
    NEW."ID_EVEN",
    NEW."Utilisateur",
    NEW."EEE_Type",
    NEW."NbrVeg",
    NEW.unite,
    NEW."EEE_Densite",
    NEW."Sup_m2",
    NEW."StadeDev",
	NEW.espperil_id);

INSERT INTO public."Evenement" ("ID_EVEN","Utilisateur","Date","Heure","ID_OBS_P","ID_Licence","Proprio_donnee")
VALUES (NEW."ID_EVEN",NEW."Utilisateur",NEW.date,NEW.heure,NEW."ID_OBS",'Propulsé par : Géofluence (licence GNU)',NEW."Utilisateur");

RETURN NEW;
END;
$BODY$;

ALTER FUNCTION public.form_espperil_esp_insert_gest()
    OWNER TO doadmin;

-- FUNCTION: public.form_espperil_esp_update_gest()

-- DROP FUNCTION IF EXISTS public.form_espperil_esp_update_gest();

CREATE OR REPLACE FUNCTION public.form_espperil_esp_update_gest()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN

UPDATE public."Obs_Point"
SET
   geom = NEW.geom,
   date = NEW.date,
   heure = NEW.heure,
   "Utilisateur" = NEW."Utilisateur",
   "Type_OBS" = 'Point',
   rel_id = NEW.rel_id
WHERE "ID_OBS" = OLD."ID_OBS";

UPDATE public."Form_EEE"
SET
    "ID_EVEN" = NEW."ID_EVEN",
    "Utilisateur" = NEW."Utilisateur",
    "EEE_Type" = NEW."EEE_Type",
    "NbrVeg" = NEW."NbrVeg",
    unite = NEW.unite,
    "EEE_Densite" = NEW."EEE_Densite",
    "Sup_m2" = NEW."Sup_m2",
    "StadeDev" = NEW."StadeDev",
	espperil_id = NEW.espperil_id
WHERE "ID_EEE" = OLD."ID_EEE";

UPDATE public."Evenement"
SET
	"Utilisateur" = NEW.utilisateur,
	"Date" = NEW.date,
	"Heure" = NEW.heure,
	"ID_OBS_P" = NEW."ID_OBS",
	"ID_Licence" = 'Propulsé par : Géofluence (licence GNU)',
	"Proprio_donnee" = NEW.utilisateur
WHERE "ID_EVEN" = OLD."even_id";

RETURN NEW;
END;
$BODY$;

ALTER FUNCTION public.form_espperil_esp_update_gest()
    OWNER TO doadmin;

-- FUNCTION: public.form_menace_delete_gest()

-- DROP FUNCTION IF EXISTS public.form_menace_delete_gest();

CREATE OR REPLACE FUNCTION public.form_menace_delete_gest()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN

DELETE FROM public."Obs_Point" 
WHERE "ID_OBS" = OLD."ID_OBS";

DELETE FROM public."FormSect_Pression"
WHERE id_press = OLD.id_press;

DELETE FROM public."Evenement"
WHERE "ID_EVEN" = OLD."even_id";

RETURN OLD;
END;
$BODY$;

ALTER FUNCTION public.form_menace_delete_gest()
    OWNER TO doadmin;

-- FUNCTION: public.form_menace_insert_gest()

-- DROP FUNCTION IF EXISTS public.form_menace_insert_gest();

CREATE OR REPLACE FUNCTION public.form_menace_insert_gest()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN
INSERT INTO public."Obs_Point" ( "ID_OBS",
   geom,
   date,
   heure,"Utilisateur","Type_OBS",rel_id)
VALUES (NEW."ID_OBS",
   NEW.geom,
   NEW.date,
   NEW.heure,NEW.utilisateur,'Point',NEW.id_press
	);

INSERT INTO public."FormSect_Pression" (id_press,
    type_press,
    actdetect_id,
    even_id,
    utilisateur,
    etat_men,
    comment,
	espperil_id)
VALUES(NEW.id_press,
    NEW.type_press,
    NEW.actdetect_id,
    NEW.even_id,
    NEW.utilisateur,
    NEW.etat_men,
    NEW.comment,
	NEW.espperil_id);

INSERT INTO public."Evenement" ("ID_EVEN","Utilisateur","Date","Heure","ID_OBS_P","ID_Licence","Proprio_donnee")
VALUES (NEW.even_id,NEW.utilisateur,NEW.date,NEW.heure,NEW."ID_OBS",'Propulsé par : Géofluence (licence GNU)',NEW.utilisateur);

RETURN NEW;
END;
$BODY$;

ALTER FUNCTION public.form_menace_insert_gest()
    OWNER TO doadmin;

-- FUNCTION: public.form_menace_update_gest()

-- DROP FUNCTION IF EXISTS public.form_menace_update_gest();

CREATE OR REPLACE FUNCTION public.form_menace_update_gest()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN

UPDATE public."Obs_Point" 
SET
   geom = NEW.geom,
   date = NEW.date,
   heure = NEW.heure,
   "Utilisateur" = NEW.utilisateur,
   "Type_OBS" = 'Point'
WHERE "ID_OBS" = OLD."ID_OBS";

UPDATE public."FormSect_Pression"
SET 
	type_press = NEW.type_press,
    actdetect_id = NEW.actdetect_id,
    even_id = NEW.even_id,
    utilisateur = NEW.utilisateur,
    etat_men = NEW.etat_men,
    comment = NEW.comment,
	espperil_id = NEW.espperil_id
WHERE id_press = OLD.id_press;

UPDATE public."Evenement"
SET
	"Utilisateur" = NEW.utilisateur,
	"Date" = NEW.date,
	"Heure" = NEW.heure,
	"ID_OBS_P" = NEW."ID_OBS",
	"ID_Licence" = 'Propulsé par : Géofluence (licence GNU)',
	"Proprio_donnee" = NEW.utilisateur
WHERE "ID_EVEN" = OLD."even_id";

RETURN NEW;
END;
$BODY$;

ALTER FUNCTION public.form_menace_update_gest()
    OWNER TO doadmin;





CREATE OR REPLACE TRIGGER form_espperil_esp_delete_tr
    INSTEAD OF DELETE
    ON public.form_espperil_esp_v
    FOR EACH ROW
    EXECUTE FUNCTION public.form_espperil_esp_delete_gest();

CREATE OR REPLACE TRIGGER form_espperil_esp_update_tr
    INSTEAD OF UPDATE
    ON public.form_espperil_esp_v
    FOR EACH ROW
    EXECUTE FUNCTION public.form_espperil_esp_update_gest();

CREATE OR REPLACE TRIGGER form_espperil_esp_insert_tr
    INSTEAD OF INSERT
    ON public.form_espperil_esp_v
    FOR EACH ROW
    EXECUTE FUNCTION public.form_espperil_esp_insert_gest();

CREATE OR REPLACE TRIGGER form_menace_delete_tr
    INSTEAD OF DELETE
    ON public.form_menace_v
    FOR EACH ROW
    EXECUTE FUNCTION public.form_menace_delete_gest();

CREATE OR REPLACE TRIGGER form_menace_update_tr
    INSTEAD OF UPDATE
    ON public.form_menace_v
    FOR EACH ROW
    EXECUTE FUNCTION public.form_menace_update_gest();

CREATE OR REPLACE TRIGGER form_menace_insert_tr
    INSTEAD OF INSERT
    ON public.form_menace_v
    FOR EACH ROW
    EXECUTE FUNCTION public.form_menace_insert_gest();