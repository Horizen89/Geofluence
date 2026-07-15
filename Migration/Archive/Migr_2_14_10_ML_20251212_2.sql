-- Table: public.FormSect_Pression

-- DROP TABLE IF EXISTS public."FormSect_Pression";

CREATE TABLE IF NOT EXISTS public."FormSect_Pression"
(
    id_press text COLLATE pg_catalog."default" NOT NULL,
    type_press text COLLATE pg_catalog."default",
    dist_press bigint,
    id_mh text COLLATE pg_catalog."default",
    utilisateur text COLLATE pg_catalog."default",
    comment_press text COLLATE pg_catalog."default",
    CONSTRAINT "FormSect_Pression_pkey" PRIMARY KEY (id_press)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."FormSect_Pression"
    OWNER to geof_maitre;

REVOKE ALL ON TABLE public."FormSect_Pression" FROM geof_invite;
REVOKE ALL ON TABLE public."FormSect_Pression" FROM geof_utilisateur;

GRANT SELECT ON TABLE public."FormSect_Pression" TO geof_invite;

GRANT ALL ON TABLE public."FormSect_Pression" TO geof_maitre;

GRANT SELECT ON TABLE public."FormSect_Pression" TO geof_utilisateur;


-- View: public.Tbl_EspecesFlore_LatFra_V

-- DROP VIEW public."Tbl_EspecesFlore_LatFra_V";

CREATE OR REPLACE VIEW public."Tbl_EspecesFlore_LatFra_V"
 AS
 SELECT gen_random_uuid() AS "UUID",
    "Tbl_EspecesFlore"."Nom latin" AS "Nm_Esp",
    "Tbl_EspecesFlore".id,
    "Tbl_EspecesFlore"."Nom latin",
    "Tbl_EspecesFlore"."Noms vernaculaires Latin",
    "Tbl_EspecesFlore"."Nom francais",
    "Tbl_EspecesFlore"."Noms vernaculaires Francais",
    "Tbl_EspecesFlore"."Sp.",
    "Tbl_EspecesFlore"."Arbo",
    "Tbl_EspecesFlore"."Arbu",
    "Tbl_EspecesFlore"."Herb",
    "Tbl_EspecesFlore"."Code",
    "Tbl_EspecesFlore"."Statut hydrique",
    "Tbl_EspecesFlore"."Designation",
    "Tbl_EspecesFlore"."Derniere mise a jour",
    "Tbl_EspecesFlore"."ID_SPP",
    "Tbl_EspecesFlore"."Etat",
    "Tbl_EspecesFlore".categorie
   FROM "Tbl_EspecesFlore"
UNION ALL
 SELECT gen_random_uuid() AS "UUID",
    "Tbl_EspecesFlore"."Nom francais" AS "Nm_Esp",
    "Tbl_EspecesFlore".id,
    "Tbl_EspecesFlore"."Nom latin",
    "Tbl_EspecesFlore"."Noms vernaculaires Latin",
    "Tbl_EspecesFlore"."Nom francais",
    "Tbl_EspecesFlore"."Noms vernaculaires Francais",
    "Tbl_EspecesFlore"."Sp.",
    "Tbl_EspecesFlore"."Arbo",
    "Tbl_EspecesFlore"."Arbu",
    "Tbl_EspecesFlore"."Herb",
    "Tbl_EspecesFlore"."Code",
    "Tbl_EspecesFlore"."Statut hydrique",
    "Tbl_EspecesFlore"."Designation",
    "Tbl_EspecesFlore"."Derniere mise a jour",
    "Tbl_EspecesFlore"."ID_SPP",
    "Tbl_EspecesFlore"."Etat",
    "Tbl_EspecesFlore".categorie
   FROM "Tbl_EspecesFlore";

ALTER TABLE public."Tbl_EspecesFlore_LatFra_V"
    OWNER TO geof_maitre;

GRANT ALL ON TABLE public."Tbl_EspecesFlore_LatFra_V" TO doadmin;
GRANT SELECT ON TABLE public."Tbl_EspecesFlore_LatFra_V" TO geof_invite;
GRANT ALL ON TABLE public."Tbl_EspecesFlore_LatFra_V" TO geof_maitre;
GRANT SELECT ON TABLE public."Tbl_EspecesFlore_LatFra_V" TO geof_utilisateur;

