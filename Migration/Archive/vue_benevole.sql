-- Création de la vue

-- À noter que dans ce cas ci, j'utilise un left join pour m'assurer que tous les points de Obs_Point apparaissent dans la vue. 
-- On souhaitait que les bénévoles voient les points existants enregistrés avec le form_vtt.

CREATE OR REPLACE VIEW public."Vue_Benevole"
 AS
 -- génère un identifiant unique (pas suffisant pour les updates puisque instable)
 SELECT row_number() OVER () AS gid,
    p."ID_OBS",
    p.geom,
    p."Type_OBS" AS type_point,
    e."ID_EVEN",
    e."ID_Proprio",
    e."ID_Proj",
    e."Heure",
    e."Date" AS date_even,
    e."Type_Obs" AS type_even,
    e."ID_Licence",
    e."Proprio_donnee",
    e."Prive",
    b."ID_Bene",
    b."Utilisateur",
    b.id_vtt,
    b.vtt_mat,
    b."Qui",
    b."Date" AS date_bene,
    b."Type_Obs" AS type_observation,
    b."Insta_Pres",
    b."Type_Travers",
    b."Autre_Travers",
    b."Travaux_Eff",
    b."Materiaux_Trav",
    b."Sign_Insta",
    b."Recomm_Trav",
    b."Comm",
    b."Autre_Travaux",
    b.photo
   FROM "Obs_Point" c
     LEFT JOIN "Evenement" e ON e."ID_OBS_P" = p."ID_OBS"
     LEFT JOIN "Form_Bene" b ON b."ID_EVEN"::text = e."ID_EVEN";

ALTER TABLE public."Vue_Benevole"
    OWNER TO geof_maitre;

GRANT INSERT, SELECT ON TABLE public."Vue_Benevole" TO geof_invite;
GRANT ALL ON TABLE public."Vue_Benevole" TO geof_maitre;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE public."Vue_Benevole" TO geof_utilisateur;
GRANT ALL ON TABLE public."Vue_Benevole" TO matres_vttben;

-- Trigger sur la vue

CREATE OR REPLACE TRIGGER benevole_insert
    INSTEAD OF INSERT
    ON public."Vue_Benevole"
    FOR EACH ROW
    EXECUTE FUNCTION public.insert_benevole();

-- Trigger Function

CREATE OR REPLACE FUNCTION public.insert_benevole()
    RETURNS trigger
    LANGUAGE 'plpgsql'
AS $BODY$
BEGIN

    -- Obs_Point
    INSERT INTO "Obs_Point" ("ID_OBS", "Type_OBS", "Utilisateur", geom)
    VALUES (NEW."ID_OBS", NEW."type_point", NEW."Utilisateur", NEW.geom);

    -- Evenement
    INSERT INTO "Evenement" ("ID_EVEN", "ID_Proprio", "ID_Proj", "ID_OBS_P", "Heure", "Date", "Type_Obs", "ID_Licence", "Proprio_donnee", "Prive", "Utilisateur")
    VALUES (NEW."ID_EVEN", NEW."ID_Proprio", NEW."ID_Proj", NEW."ID_OBS", NEW."Heure", NEW.date_even, NEW.type_even, NEW."ID_Licence", NEW."Proprio_donnee", NEW."Prive", NEW."Utilisateur");

    -- Benevole
    INSERT INTO "Form_Bene" ("ID_Bene","ID_EVEN", "Utilisateur", id_vtt, vtt_mat, "Date", "Qui", "Type_Obs", "Insta_Pres", "Type_Travers", "Autre_Travers", "Travaux_Eff", "Materiaux_Trav", "Sign_Insta", "Recomm_Trav", "Comm", "Autre_Travaux", photo)
    VALUES (NEW."ID_Bene", NEW."ID_EVEN", NEW."Utilisateur", NEW.id_vtt, NEW.vtt_mat, NEW.date_bene, NEW."Qui", NEW.type_observation, NEW."Insta_Pres", NEW."Type_Travers", NEW."Autre_Travers", NEW."Travaux_Eff",
    NEW."Materiaux_Trav", NEW."Sign_Insta", NEW."Recomm_Trav", NEW."Comm", NEW."Autre_Travaux", NEW."photo");

    RETURN NEW;
END;
$BODY$;

ALTER FUNCTION public.insert_benevole()
    OWNER TO doadmin;
