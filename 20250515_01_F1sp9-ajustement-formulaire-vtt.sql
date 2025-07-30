-- ajustement formulaire vtt
-- depends: 20240925_01_Dxq37-remove-all-database-views

INSERT INTO "Tbl_TypeCrs" (id_typecrs, code, valeur) VALUES ('TypeCrs_{5f3ce673-6a3e-45d8-a1f6-90f7cb80a796}', 'PDC', 'Pas de cours d''eau');
INSERT INTO "Tbl_Milieu" ("ID_Milieu", "Code", "Valeur") VALUES ('Mil_{5aa6b10e-b711-48c7-bb44-9f00a61d4485}', 'MUN', 'Municipal');

DROP VIEW "Form_VTT_V";

ALTER TABLE "Form_VTT"
ALTER COLUMN x TYPE numeric(20,10)
USING x::numeric(20,10),
ALTER COLUMN y TYPE numeric(20,10)
USING y::numeric(20,10);

CREATE VIEW public."Form_VTT_V"
 AS
 SELECT *
   FROM "Form_VTT"
  WHERE "Form_VTT".utilisateur = USER;

ALTER TABLE public."Form_VTT_V"
    OWNER TO geof_maitre;

GRANT INSERT, SELECT ON TABLE public."Form_VTT_V" TO geof_invite;
GRANT ALL ON TABLE public."Form_VTT_V" TO geof_maitre;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE public."Form_VTT_V" TO geof_utilisateur;
-- GRANT SELECT, UPDATE, DELETE ON TABLE public."Form_VTT_V" TO matres_vttben;