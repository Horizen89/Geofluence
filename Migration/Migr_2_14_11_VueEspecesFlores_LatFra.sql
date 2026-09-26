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
   FROM "Tbl_EspecesFlore"
UNION ALL
 SELECT gen_random_uuid() AS "UUID",
    translate(lower("Tbl_EspecesFlore"."Nom francais"::text), 'àâäéèêëîïôöùûüçœæ'::text, 'aaaeceeeiioouuucaeae'::text) AS "Nm_Esp",
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

