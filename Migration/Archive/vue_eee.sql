-- Vue formulaire EEE - Section site seulement - Jointure avec Evenement et Obs_Point

CREATE OR REPLACE VIEW public."EEE_Site_Point"
 AS
 SELECT
    f."ID_EEE" as fid,
    e."ID_EVEN",
    p."ID_OBS",
    f."Utilisateur",
    p.geom,
    p."Type_OBS" AS type_point,
    e."ID_Employ",
    e."ID_Proprio",
    e."ID_Proj",
    e."Heure",
    e."Date" AS date_even,
    e."Type_Obs" AS type_even,
    e."ID_Licence",
    e."Proprio_donnee",
    e."Prive",
    f.id_act,
    f.courriel,
    f.regne,
    f.precision,
    f.site,
    f.zgie,
    f.region,
    f.code_regi,
    f."Munic",
    f.mrc,
    f."Respo",
    f."Milieu",
    f."Repere",
    f."Contrainte",
    f.categorie,
    f."EEE_Type",
    f.lat_flore,
    f.autre_sp,
    f.autre_nom_latin,
    f."SP_autre",
    f."NbrVeg",
    f."EEE_Densite",
    f."Superf_m2",
    f."StadeDev",
    f.site_autre_stade,
    f.site_stade_1,
    f.site_stade_2,
    f.site_stade_3,
    f.site_stade_4,
    f.site_stade_5,
    f.cause_probag,
    f.hote,
    f."Trt_av",
    f."Trt_avQui",
    f."Trt_avType",
    f."TraitRecom",
    f."EEE_Comment",
    f.photo1
   FROM "Obs_Point" p
     JOIN "Evenement" e ON e."ID_OBS_P" = p."ID_OBS"
     JOIN "Form_EEE" f ON f."ID_EVEN"::text = e."ID_EVEN";

ALTER TABLE public."EEE_Site_Point"
    OWNER TO geof_maitre;

GRANT INSERT, SELECT ON TABLE public."EEE_Site_Point" TO geof_invite;
GRANT ALL ON TABLE public."EEE_Site_Point" TO geof_maitre;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE public."EEE_Site_Point" TO geof_utilisateur;
GRANT ALL ON TABLE public."EEE_Site_Point" TO matres_vttben;

-- Fonction INSERT

CREATE OR REPLACE FUNCTION public.eee_site_point_insert()
    RETURNS trigger
    LANGUAGE 'plpgsql'
AS $BODY$
BEGIN

    -- Obs_Point
    INSERT INTO "Obs_Point" ("ID_OBS", "Type_OBS", "Utilisateur", geom)
    VALUES (NEW."ID_OBS", NEW."type_point", NEW."Utilisateur", NEW.geom);

    -- Evenement
    INSERT INTO "Evenement" ("ID_EVEN", "ID_Employ", "ID_Proprio", "ID_Proj", "ID_OBS_P", "Heure", "Date", "Type_Obs", "ID_Licence", "Proprio_donnee", "Prive", "Utilisateur")
    VALUES (NEW."ID_EVEN", NEW."ID_Employ", NEW."ID_Proprio", NEW."ID_Proj", NEW."ID_OBS", NEW."Heure", NEW.date_even, NEW.type_even, NEW."ID_Licence", NEW."Proprio_donnee", NEW."Prive", NEW."Utilisateur");

    -- EEE
    INSERT INTO "Form_EEE" ("ID_EEE", "ID_EVEN", "Utilisateur", id_act, courriel, regne, precision, site, zgie, region, code_regi, "Munic", mrc, "Respo", "Milieu", "Repere", "Contrainte", categorie, "EEE_Type", lat_flore, autre_sp, 
    autre_nom_latin, "SP_autre", "NbrVeg", "EEE_Densite", "Superf_m2", "StadeDev", site_autre_stade, site_stade_1, site_stade_2, site_stade_3, site_stade_4, site_stade_5, cause_probag, hote, "Trt_av",
    "Trt_avQui", "Trt_avType", "TraitRecom", "EEE_Comment", photo1)
    VALUES (NEW.fid, NEW."ID_EVEN", NEW."Utilisateur", NEW.id_act, NEW.courriel, NEW.regne, NEW.precision, NEW.site, NEW.zgie, NEW.region, NEW.code_regi, NEW."Munic", NEW.mrc, NEW."Respo", NEW."Milieu", NEW."Repere", NEW."Contrainte", 
    NEW.categorie, NEW."EEE_Type", NEW.lat_flore, NEW.autre_sp, NEW.autre_nom_latin, NEW."SP_autre", NEW."NbrVeg", NEW."EEE_Densite", NEW."Superf_m2", NEW."StadeDev", NEW.site_autre_stade, NEW.site_stade_1, 
    NEW.site_stade_2, NEW.site_stade_3, NEW.site_stade_4, NEW.site_stade_5, NEW.cause_probag, NEW.hote, NEW."Trt_av", NEW."Trt_avQui", NEW."Trt_avType", NEW."TraitRecom", NEW."EEE_Comment", NEW.photo1);
    RETURN NEW;
END;
$BODY$;

ALTER FUNCTION public.eee_site_point_insert()
    OWNER TO doadmin;

-- Trigger INSERT

CREATE OR REPLACE TRIGGER trigger_eee_site_point_insert
    INSTEAD OF INSERT
    ON public."EEE_Site_Point"
    FOR EACH ROW
    EXECUTE FUNCTION public.eee_site_point_insert();



-- Fonction UPDATE

CREATE OR REPLACE FUNCTION public.eee_site_point_update()
RETURNS trigger
LANGUAGE plpgsql
AS $$
BEGIN
  UPDATE "Obs_Point"
  SET
    "Type_OBS" = NEW."type_point",
    "Utilisateur"= NEW."Utilisateur",
    geom = NEW.geom
  WHERE "ID_OBS" = OLD."ID_OBS";

  UPDATE "Evenement"
  SET
    "ID_Employ" = NEW."ID_Employ",
    "ID_Proprio" = NEW."ID_Proprio",
    "ID_Proj" = NEW."ID_Proj",
    "ID_OBS_P" = NEW."ID_OBS",
    "Heure" = NEW."Heure",
    "Date" = NEW.date_even,
    "Type_Obs" = NEW.type_even,
    "ID_Licence" = NEW."ID_Licence",
    "Proprio_donnee"= NEW."Proprio_donnee",
    "Prive" = NEW."Prive",
    "Utilisateur" = NEW."Utilisateur"
  WHERE "ID_EVEN" = OLD."ID_EVEN";

  UPDATE "Form_EEE"
  SET
    "Utilisateur" = NEW."Utilisateur",
    id_act = NEW.id_act,
    courriel = NEW.courriel,
    regne = NEW.regne,
    precision = NEW.precision,
    site = NEW.site,
    zgie = NEW.zgie,
    region = NEW.region,
    code_regi = NEW.code_regi,
    "Munic" = NEW."Munic",
    mrc = NEW.mrc,
    "Respo" = NEW."Respo",
    "Milieu" = NEW."Milieu",
    "Repere" = NEW."Repere",
    "Contrainte" = NEW."Contrainte",
    categorie = NEW.categorie,
    "EEE_Type" = NEW."EEE_Type",
    lat_flore = NEW.lat_flore,
    autre_sp = NEW.autre_sp,
    autre_nom_latin = NEW.autre_nom_latin,
    "SP_autre" = NEW."SP_autre",
    "NbrVeg" = NEW."NbrVeg",
    "EEE_Densite" = NEW."EEE_Densite",
    "Superf_m2" = NEW."Superf_m2",
    "StadeDev" = NEW."StadeDev",
    site_autre_stade = NEW.site_autre_stade,
    site_stade_1 = NEW.site_stade_1,
    site_stade_2 = NEW.site_stade_2,
    site_stade_3 = NEW.site_stade_3,
    site_stade_4 = NEW.site_stade_4,
    site_stade_5 = NEW.site_stade_5,
    cause_probag = NEW.cause_probag,
    hote = NEW.hote,
    "Trt_av" = NEW."Trt_av",
    "Trt_avQui" = NEW."Trt_avQui",
    "Trt_avType" = NEW."Trt_avType",
    "TraitRecom" = NEW."TraitRecom",
    "EEE_Comment" = NEW."EEE_Comment",
    photo1 = NEW.photo1
  WHERE "ID_EEE" = OLD.fid;

  RETURN NEW;
END;
$$;

-- Trigger UPDATE

CREATE OR REPLACE TRIGGER trigger_eee_site_point_update
INSTEAD OF UPDATE
ON public."EEE_Site_Point"
FOR EACH ROW
EXECUTE FUNCTION public.eee_site_point_update();



-- Fonction delete

CREATE OR REPLACE FUNCTION public.eee_site_point_delete()
RETURNS trigger
LANGUAGE plpgsql
AS $$
BEGIN

  DELETE FROM "Form_EEE"
  WHERE "ID_EEE" = OLD.fid;

  DELETE FROM "Evenement"
  WHERE "ID_EVEN" = OLD."ID_EVEN";

  DELETE FROM "Obs_Point"
  WHERE "ID_OBS" = OLD."ID_OBS";

  RETURN OLD;
END;
$$;

-- Trigger delete

CREATE OR REPLACE TRIGGER trigger_eee_site_point_delete
INSTEAD OF DELETE
ON public."EEE_Site_Point"
FOR EACH ROW
EXECUTE FUNCTION public.eee_site_point_delete();
