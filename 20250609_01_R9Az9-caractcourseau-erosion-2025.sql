-- caractcourseau erosion 2025
-- depends: 20250606_01_cHF60-formulaire-eee-2025

-- Form CaractCoursEau

DROP VIEW public."Form_CaractCoursEau_V";

ALTER TABLE public."Form_CaractCoursEau"
ADD COLUMN "Typ_Ecoul" text,
ADD COLUMN "Cond_Hydro" text,
ADD COLUMN "Typ_Tronc" text,
ADD COLUMN "Orig_Ecoul" text,
ADD COLUMN "Dir_Ecoul" text,
ADD COLUMN "Prop_VegAqua" text,
ADD COLUMN "Struct_Anth" text,
ADD COLUMN "Stab_Riv_Trav" text,
ADD COLUMN "Recouv_Veget_Nat" text,
ADD COLUMN "Sol_Perturb" text,
ADD COLUMN "Veget_Coup" text,
ADD COLUMN "Typ_Milieu" text,
ADD COLUMN "Connectivite" text,
ADD COLUMN "Prof_Moy" integer,
ADD COLUMN "Larg_LitMin" double precision,
ADD COLUMN "Pres_Debris" text,
ADD COLUMN "Comment_Perturb" text,
ADD COLUMN "Subst_RocMer" integer,
ADD COLUMN "Subst_GrosBloc" integer,
ADD COLUMN "Subst_Bloc" integer,
ADD COLUMN "Subst_Galet" integer,
ADD COLUMN "Subst_Caillou" integer,
ADD COLUMN "Subst_Grav" integer,
ADD COLUMN "Subst_Sab" integer,
ADD COLUMN "Subst_Lim" integer,
ADD COLUMN "Subst_Arg" integer,
ADD COLUMN "Subst_LitFor" integer,
ADD COLUMN "Subst_DebOrg" integer,
ADD COLUMN "Subst_Autre" integer,
ADD COLUMN "Rec_PltEmerg" text,
ADD COLUMN "Rec_PltFlot" text,
ADD COLUMN "Rec_PltSubm" text,
ADD COLUMN "Rec_Tot" text,
ADD COLUMN "Org_Lit" text,
ADD COLUMN "Obstacle" text,
ADD COLUMN "Methode_Biophys" text,
ADD COLUMN "D_Eros_Pct" text,
ADD COLUMN "D_Perturb_Pct" text,
ADD COLUMN "D_Perturb_Typ" text,
ADD COLUMN "G_Eros_Pct" text,
ADD COLUMN "G_Perturb_Pct" text,
ADD COLUMN "G_Perturb_Typ" text,
ADD COLUMN "Hab_Poiss" text,
ADD COLUMN "Potent_Poiss" text,
ADD COLUMN "Hab_Autre" text,
ADD COLUMN "EspFaun_Obs" text,
ADD COLUMN "Autre_Rive" boolean,
ADD COLUMN "Eros_Lit" text,
ADD COLUMN "Caract_Station" text,
ADD COLUMN "Nm_CrEau" text;

CREATE OR REPLACE VIEW public."Form_CaractCoursEau_V"
 AS
 SELECT *
   FROM "Form_CaractCoursEau"
  WHERE "Form_CaractCoursEau"."Utilisateur" ~~ concat(USER, '%') OR replace(USER::text, "substring"(USER::text, "position"(USER::text, '_'::text)), ''::text) = "Form_CaractCoursEau"."Utilisateur";

ALTER TABLE public."Form_CaractCoursEau_V"
    OWNER TO geof_maitre;

GRANT INSERT, SELECT ON TABLE public."Form_CaractCoursEau_V" TO geof_invite;
GRANT ALL ON TABLE public."Form_CaractCoursEau_V" TO geof_maitre;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE public."Form_CaractCoursEau_V" TO geof_utilisateur;

-- Form Erosion

DROP VIEW public."Form_Erosion_V";

ALTER TABLE public."Form_Erosion"
ADD COLUMN "Terras" text,
ADD COLUMN "Chen_Abd" text,
ADD COLUMN "Banc_Perch" text,
ADD COLUMN "Affouill_Infra" text,
ADD COLUMN "Racin_Expo" text,
ADD COLUMN "Chen_EtrProf" text,
ADD COLUMN "Anc_Gliss" text,
ADD COLUMN "Berge_Ero" text,
ADD COLUMN "Lit_Compact" text,
ADD COLUMN "Epa_Sed" text,
ADD COLUMN "Banc_Grav" text,
ADD COLUMN "Infra_Ensouv" text,
ADD COLUMN "Drag_Freq" text,
ADD COLUMN "EspRed_Pont" text,
ADD COLUMN "Delta_Cone" text,
ADD COLUMN "Berg_PeuProf" text,
ADD COLUMN "Berge_Stab" text,
ADD COLUMN "Banc_Veget" text,
ADD COLUMN "Lit_Veget" text,
ADD COLUMN "Abs_Sed" text,
ADD COLUMN "Stab_Comment" text;

CREATE OR REPLACE VIEW public."Form_Erosion_V"
 AS
 SELECT *
   FROM "Form_Erosion"
  WHERE "Form_Erosion"."Utilisateur" ~~ concat(USER, '%') OR replace(USER::text, "substring"(USER::text, "position"(USER::text, '_'::text)), ''::text) = "Form_Erosion"."Utilisateur";

ALTER TABLE public."Form_Erosion_V"
    OWNER TO geof_maitre;

GRANT INSERT, SELECT ON TABLE public."Form_Erosion_V" TO geof_invite;
GRANT ALL ON TABLE public."Form_Erosion_V" TO geof_maitre;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE public."Form_Erosion_V" TO geof_utilisateur;

-- VALUE MAPS

-- CaractCoursEau_CondHydro

CREATE TABLE public."CaractCoursEau_CondHydro" (
    "ID_CondHydro" text NOT NULL,
    code text NOT NULL,
    valeur text NOT NULL
);

ALTER TABLE public."CaractCoursEau_CondHydro" OWNER TO geof_maitre;

ALTER TABLE ONLY public."CaractCoursEau_CondHydro"
    ADD CONSTRAINT "CaractCoursEau_CondHydro_pkey" PRIMARY KEY ("ID_CondHydro");

GRANT SELECT ON TABLE public."CaractCoursEau_CondHydro" TO geof_utilisateur;
GRANT SELECT ON TABLE public."CaractCoursEau_CondHydro" TO geof_invite;

INSERT INTO public."CaractCoursEau_CondHydro" ("ID_CondHydro", code, valeur) VALUES ('CondHydro_{a120087d-ed2d-4f68-9c4e-cd930fc19d71}', 'eti', 'Étiage');
INSERT INTO public."CaractCoursEau_CondHydro" ("ID_CondHydro", code, valeur) VALUES ('CondHydro_{61fb3fb0-890a-4797-bff6-1974c162df98}', 'moy', 'Moyenne');
INSERT INTO public."CaractCoursEau_CondHydro" ("ID_CondHydro", code, valeur) VALUES ('CondHydro_{02d99e9c-85dc-43f0-ac39-e57ce61c7925}', 'cru', 'Crue');

-- CaractCoursEau_OrigEcoul

CREATE TABLE public."CaractCoursEau_OrigEcoul" (
    "ID_OrigEcoul" text NOT NULL,
    code text NOT NULL,
    valeur text NOT NULL
);

ALTER TABLE public."CaractCoursEau_OrigEcoul" OWNER TO geof_maitre;

ALTER TABLE ONLY public."CaractCoursEau_OrigEcoul"
    ADD CONSTRAINT "CaractCoursEau_OrigEcoul_pkey" PRIMARY KEY ("ID_OrigEcoul");

GRANT SELECT ON TABLE public."CaractCoursEau_OrigEcoul" TO geof_utilisateur;
GRANT SELECT ON TABLE public."CaractCoursEau_OrigEcoul" TO geof_invite;


INSERT INTO public."CaractCoursEau_OrigEcoul" ("ID_OrigEcoul", code, valeur) VALUES ('OrigEcoul_{ec20c6b9-2041-42f4-9075-fada77bc82eb}', 'nat', 'Naturel');
INSERT INTO public."CaractCoursEau_OrigEcoul" ("ID_OrigEcoul", code, valeur) VALUES ('OrigEcoul_{c8180ed5-b06a-4b3f-aae2-e23ac39774cc}', 'ant', 'Anthropique');

-- CaractCoursEau_TypEcoul

CREATE TABLE public."CaractCoursEau_TypEcoul" (
    "ID_Type" text NOT NULL,
    code text NOT NULL,
    valeur text NOT NULL
);

ALTER TABLE public."CaractCoursEau_TypEcoul" OWNER TO geof_maitre;

ALTER TABLE ONLY public."CaractCoursEau_TypEcoul"
    ADD CONSTRAINT "CaractCoursEau_TypEcoul_pkey" PRIMARY KEY ("ID_Type");

GRANT SELECT ON TABLE public."CaractCoursEau_TypEcoul" TO geof_utilisateur;

GRANT SELECT ON TABLE public."CaractCoursEau_TypEcoul" TO geof_invite;

INSERT INTO public."CaractCoursEau_TypEcoul" ("ID_Type", code, valeur) VALUES ('Type_{6c87927b-ae5f-4c0d-9564-a12364e26b93}', 'perm', 'Permanent');
INSERT INTO public."CaractCoursEau_TypEcoul" ("ID_Type", code, valeur) VALUES ('Type_{9047036f-e688-4c7a-834b-3c5133751068}', 'interm', 'Intermittent');

-- CaractCoursEau_TypTronc

CREATE TABLE public."CaractCoursEau_TypTronc" (
    "ID_TypTronc" text NOT NULL,
    code text NOT NULL,
    valeur text NOT NULL
);

ALTER TABLE public."CaractCoursEau_TypTronc" OWNER TO geof_maitre;

ALTER TABLE ONLY public."CaractCoursEau_TypTronc"
    ADD CONSTRAINT "CaractCoursEau_TypTronc_pkey" PRIMARY KEY ("ID_TypTronc");

GRANT SELECT ON TABLE public."CaractCoursEau_TypTronc" TO geof_utilisateur;
GRANT SELECT ON TABLE public."CaractCoursEau_TypTronc" TO geof_invite;

INSERT INTO public."CaractCoursEau_TypTronc" ("ID_TypTronc", code, valeur) VALUES ('TypTronc_{3a5e9848-fb4c-4129-9378-bda112cf27b8}', 'homo', 'Homogène');
INSERT INTO public."CaractCoursEau_TypTronc" ("ID_TypTronc", code, valeur) VALUES ('TypTronc_{4d02a7f6-f27f-4f7c-af92-e46935176358}', 'hete', 'Hétérogène');

-- Tbl Relations

INSERT INTO public."Tbl_Relations" (id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{01b2aefe-6267-442e-ad24-298b815910d2}', 'Form_CaractCoursEau', 'CaractCoursEau_TypEcoul', 'Typ_Ecoul', 'ID_Type', 'valeur');
INSERT INTO public."Tbl_Relations" (id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{12bcef1d-e841-48d2-a3ab-0635f4298400}', 'Form_Erosion', 'Tbl_OuiNon', 'Chen_Abd', 'ID_OuiNon', 'Valeur');
INSERT INTO public."Tbl_Relations" (id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{206a5f4d-f71d-49c1-a753-85ea5345df26}', 'Form_Erosion', 'Tbl_OuiNon', 'Drag_Freq', 'ID_OuiNon', 'Valeur');
INSERT INTO public."Tbl_Relations" (id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{409def7d-8019-4a38-8744-4e44418b6697}', 'Form_Erosion', 'Tbl_OuiNon', 'Anc_Gliss', 'ID_OuiNon', 'Valeur');
INSERT INTO public."Tbl_Relations" (id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{481965aa-09a6-4f9f-9efe-76fde4ca797a}', 'Form_Erosion', 'Tbl_OuiNon', 'Delta_Cone', 'ID_OuiNon', 'Valeur');
INSERT INTO public."Tbl_Relations" (id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{485d1733-81ea-4653-b6cf-fa873e767a34}', 'Form_CaractCoursEau', 'CaractCoursEau_CondHydro', 'Cond_Hydro', 'ID_CondHydro', 'valeur');
INSERT INTO public."Tbl_Relations" (id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{4d13eec3-1535-49be-8cba-7aaedc537597}', 'Form_Erosion', 'Tbl_OuiNon', 'Infra_Esouv', 'ID_OuiNon', 'Valeur');
INSERT INTO public."Tbl_Relations" (id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{4d20b3a4-6088-48d8-a232-515111f8037f}', 'Form_Erosion', 'Tbl_OuiNon', 'Affouill_Infra', 'ID_OuiNon', 'Valeur');
INSERT INTO public."Tbl_Relations" (id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{4d7bb357-b0ed-4b28-be22-4163ca5afa3b}', 'Form_Erosion', 'Tbl_OuiNon', 'Banc_Veget', 'ID_OuiNon', 'Valeur');
INSERT INTO public."Tbl_Relations" (id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{52c714c8-9069-4256-bc5a-216d5f6da1b3}', 'Form_Erosion', 'Tbl_OuiNon', 'Lit_Veget', 'ID_OuiNon', 'Valeur');
INSERT INTO public."Tbl_Relations" (id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{605fa5fb-091a-4dbf-82e7-b2a1e5d27020}', 'Form_Erosion', 'Tbl_OuiNon', 'Banc_Perch', 'ID_OuiNon', 'Valeur');
INSERT INTO public."Tbl_Relations" (id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{70e106c7-260e-4f46-821e-68fbe76272da}', 'Form_CaractCoursEau', 'CaractCoursEau_TypTronc', 'Typ_Tronc', 'ID_TypTronc', 'valeur');
INSERT INTO public."Tbl_Relations" (id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{74b3979b-3cc6-491c-bbb2-23aac360df5b}', 'Form_CaractCoursEau', 'Tbl_Pct_25', 'Sol_Perturb', 'ID_Pct', 'Pct');
INSERT INTO public."Tbl_Relations" (id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{93efc1ce-985d-480b-9fc3-df0b5eda7ea7}', 'Form_Erosion', 'Tbl_OuiNon', 'Berg_PeuProf', 'ID_OuiNon', 'Valeur');
INSERT INTO public."Tbl_Relations" (id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{9bf98d28-372c-44e0-a600-e0e80a94f94b}', 'Form_Erosion', 'Tbl_OuiNon', 'Terrasse', 'ID_OuiNon', 'Valeur');
INSERT INTO public."Tbl_Relations" (id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{a35f6999-4817-46b1-954b-c132ce18f675}', 'Form_CaractCoursEau', 'Tbl_Pct_25', 'Veget_Coup', 'ID_Pct', 'Pct');
INSERT INTO public."Tbl_Relations" (id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{a7a8bac1-6d9d-4353-a0b7-d6c126c997d4}', 'Form_Erosion', 'Tbl_OuiNon', 'Abs_Sed', 'ID_OuiNon', 'Valeur');
INSERT INTO public."Tbl_Relations" (id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{b00d39f3-e3da-4a9e-81e5-a9f0c46d9947}', 'Form_Erosion', 'Tbl_OuiNon', 'EspRed_Pont', 'ID_OuiNon', 'Valeur');
INSERT INTO public."Tbl_Relations" (id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{b3649485-087a-4fe6-969d-edb0fdfaba41}', 'Form_CaractCoursEau', 'CaractCoursEau_OrigEcoul', 'Orig_Ecoul', 'ID_OrigEcoul', 'valeur');
INSERT INTO public."Tbl_Relations" (id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{c482b237-12ae-4b30-8a9f-e58fcda9560f}', 'Form_Erosion', 'Tbl_OuiNon', 'Epa_Sed', 'ID_OuiNon', 'Valeur');
INSERT INTO public."Tbl_Relations" (id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{c9d6efe3-5209-4111-8c02-f396f87847b2}', 'Form_Erosion', 'Tbl_OuiNon', 'Berge_Ero', 'ID_OuiNon', 'Valeur');
INSERT INTO public."Tbl_Relations" (id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{cf1ae530-83e1-4451-8c83-52b785d272b6}', 'Form_CaractCoursEau', 'Tbl_Pct', 'Prop_VegAqua', 'ID_Pct', 'Val_Txt');
INSERT INTO public."Tbl_Relations" (id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{d84b65b1-5f54-4ea2-ba5b-85f14231abee}', 'Form_CaractCoursEau', 'Tbl_Pct_25', 'Recouv_Veget_Nat', 'ID_Pct', 'Pct');
INSERT INTO public."Tbl_Relations" (id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{e1dea13d-fec6-46c1-8d3d-d07e2a8e30d7}', 'Form_Erosion', 'Tbl_OuiNon', 'Banc_Grav', 'ID_OuiNon', 'Valeur');
INSERT INTO public."Tbl_Relations" (id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{e427f59d-295b-4022-8267-3fa5181eb90f}', 'Form_Erosion', 'Tbl_OuiNon', 'Lit_Compact', 'ID_OuiNon', 'Valeur');
INSERT INTO public."Tbl_Relations" (id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{e44738d0-a658-4fff-a627-6af25f6d5d57}', 'Form_Erosion', 'Tbl_OuiNon', 'Racin_Expo', 'ID_OuiNon', 'Valeur');
INSERT INTO public."Tbl_Relations" (id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{e98bfcda-6a3d-4b44-a274-6da62ddb1f1f}', 'Form_Erosion', 'Tbl_OuiNon', 'Berge_Stab', 'ID_OuiNon', 'Valeur');
INSERT INTO public."Tbl_Relations" (id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{f1feaeed-6393-417e-a2ae-4100ab25da86}', 'Form_Erosion', 'Tbl_OuiNon', 'Chen_EtrProf', 'ID_OuiNon', 'Valeur');