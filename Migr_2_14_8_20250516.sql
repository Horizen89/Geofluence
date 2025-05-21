-- Table: public.CaractCoursEau_Connect

-- DROP TABLE IF EXISTS public."CaractCoursEau_Connect";

CREATE TABLE IF NOT EXISTS public."CaractCoursEau_Connect"
(
    "ID_Connect" text COLLATE pg_catalog."default" NOT NULL,
    code text COLLATE pg_catalog."default" NOT NULL,
    valeur text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "CaractCoursEau_Connect_pkey" PRIMARY KEY ("ID_Connect")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."CaractCoursEau_Connect"
    OWNER to geof_maitre;

REVOKE ALL ON TABLE public."CaractCoursEau_Connect" FROM geof_invite;

GRANT SELECT ON TABLE public."CaractCoursEau_Connect" TO geof_utilisateur;

GRANT ALL ON TABLE public."CaractCoursEau_Connect" TO geof_maitre;

GRANT SELECT ON TABLE public."CaractCoursEau_Connect" TO geof_invite;

INSERT INTO public."CaractCoursEau_Connect"("ID_Connect", code, valeur) VALUES ('Connect_{0e9a25d8-eec9-4213-a3e6-ac0b7b83527f}','MANT','Milieu anthropique');
INSERT INTO public."CaractCoursEau_Connect"("ID_Connect", code, valeur) VALUES ('Connect_{37b30243-3bb3-402b-bb9b-dc1d92220287}','LAC','Lac');
INSERT INTO public."CaractCoursEau_Connect"("ID_Connect", code, valeur) VALUES ('Connect_{3d31e072-36dd-4470-bf3f-52d8b3288dd7}','FOSS','Fossé');
INSERT INTO public."CaractCoursEau_Connect"("ID_Connect", code, valeur) VALUES ('Connect_{73346f99-29e5-4f06-895a-1ea0b21728fd}','CPER','Cours d''eau permanent');
INSERT INTO public."CaractCoursEau_Connect"("ID_Connect", code, valeur) VALUES ('Connect_{743f480d-0460-436f-8ef1-c31937b8d977}','CINT','Cours d''eau intermittent');
INSERT INTO public."CaractCoursEau_Connect"("ID_Connect", code, valeur) VALUES ('Connect_{84a52292-2f3f-4691-87af-93bc23664d4c}','MH','Milieu humide');
INSERT INTO public."CaractCoursEau_Connect"("ID_Connect", code, valeur) VALUES ('Connect_{c100128a-21d8-47a1-99e6-5f7481e177e6}','MNAT','Milieu naturel');

-- Table: public.CaractCoursEau_MethBiophys

-- DROP TABLE IF EXISTS public."CaractCoursEau_MethBiophys";

CREATE TABLE IF NOT EXISTS public."CaractCoursEau_MethBiophys"
(
    "ID_Meth" text COLLATE pg_catalog."default" NOT NULL,
    code text COLLATE pg_catalog."default" NOT NULL,
    valeur text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "CaractCoursEau_MethBiophys_pkey" PRIMARY KEY ("ID_Meth")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."CaractCoursEau_MethBiophys"
    OWNER to geof_maitre;

REVOKE ALL ON TABLE public."CaractCoursEau_MethBiophys" FROM geof_invite;

GRANT SELECT ON TABLE public."CaractCoursEau_MethBiophys" TO geof_utilisateur;

GRANT ALL ON TABLE public."CaractCoursEau_MethBiophys" TO geof_maitre;

GRANT SELECT ON TABLE public."CaractCoursEau_MethBiophys" TO geof_invite;

INSERT INTO public."CaractCoursEau_MethBiophys"("ID_Meth", code, valeur) VALUES ('Meth_{1d0f7d80-90b7-426c-a291-9d300c8a3337}','7','Limite supérieure des marques linéaires sur les édifices (ou sur d’autres structures, telles que les ponts et les murets)');
INSERT INTO public."CaractCoursEau_MethBiophys"("ID_Meth", code, valeur) VALUES ('Meth_{1f7fa237-bfb2-4da1-b749-c5f991853891}','5','Limite supérieure des marques d’usure sur l’écorce des arbres');
INSERT INTO public."CaractCoursEau_MethBiophys"("ID_Meth", code, valeur) VALUES ('Meth_{4c11b96b-e2a9-46f3-8087-711738e81560}','4','Limite inférieure des peuplements continus de lichens gris sur les rochers et sur les murs de ciment');
INSERT INTO public."CaractCoursEau_MethBiophys"("ID_Meth", code, valeur) VALUES ('Meth_{56d0ebbd-371d-4af9-b5bb-4391f2a6caea}','2','Passage d’une prédominance de plantes aquatiques à une prédominance de plantes terrestres');
INSERT INTO public."CaractCoursEau_MethBiophys"("ID_Meth", code, valeur) VALUES ('Meth_{5f0fe000-c9ca-4d6f-b111-3f460dc94df7}','9','Limite supérieure d’une échancrure ou d’une encoche sur le sol liée à l’érosion par l’eau (érosion)');
INSERT INTO public."CaractCoursEau_MethBiophys"("ID_Meth", code, valeur) VALUES ('Meth_{92fdf14f-0203-4c4e-b3fe-1063875bedc0}','1','Aucun : La limite du littoral correspond au lit du cours d’eau');
INSERT INTO public."CaractCoursEau_MethBiophys"("ID_Meth", code, valeur) VALUES ('Meth_{a58aec55-c7b3-4b26-aee5-2ac32ab2f232}','3','Fin des plantes terrestres en direction du plan d’eau');
INSERT INTO public."CaractCoursEau_MethBiophys"("ID_Meth", code, valeur) VALUES ('Meth_{ac699b72-9b98-46bc-8b35-bee5d9887bd5}','6','Limite supérieure de sédimentation sur le tronc des arbres');
INSERT INTO public."CaractCoursEau_MethBiophys"("ID_Meth", code, valeur) VALUES ('Meth_{f27ff683-eedc-4221-8bd5-bd487c9f0edc}','11','Limite du littoral entre le niveau inférieur des lichens gris sur les arbres et la limite supérieure des mousses aquatiques du côté sud du tronc');
INSERT INTO public."CaractCoursEau_MethBiophys"("ID_Meth", code, valeur) VALUES ('Meth_{f58a026b-857d-4496-b6ff-55b34d89487f}','10','Limite inférieure de la litière du sous-bois');
INSERT INTO public."CaractCoursEau_MethBiophys"("ID_Meth", code, valeur) VALUES ('Meth_{fdcceee5-5063-460c-85d2-b7ebe0ed7c06}','8','Limite supérieure de la ligne de débris');

-- Table: public.CaractCoursEau_OrgLit

-- DROP TABLE IF EXISTS public."CaractCoursEau_OrgLit";

CREATE TABLE IF NOT EXISTS public."CaractCoursEau_OrgLit"
(
    "ID_OrgLit" text COLLATE pg_catalog."default" NOT NULL,
    code text COLLATE pg_catalog."default" NOT NULL,
    valeur text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "CaractCoursEau_OrgLit_pkey" PRIMARY KEY ("ID_OrgLit")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."CaractCoursEau_OrgLit"
    OWNER to geof_maitre;

REVOKE ALL ON TABLE public."CaractCoursEau_OrgLit" FROM geof_invite;

GRANT SELECT ON TABLE public."CaractCoursEau_OrgLit" TO geof_utilisateur;

GRANT ALL ON TABLE public."CaractCoursEau_OrgLit" TO geof_maitre;

GRANT SELECT ON TABLE public."CaractCoursEau_OrgLit" TO geof_invite;

INSERT INTO public."CaractCoursEau_OrgLit"("ID_OrgLit", code, valeur) VALUES ('OrgLit_{10f2b21e-c40d-452c-807b-bd4e970b2acc}','MACU','Marche cuvette');
INSERT INTO public."CaractCoursEau_OrgLit"("ID_OrgLit", code, valeur) VALUES ('OrgLit_{3860261a-a6dd-4116-84f1-31a090ec1d68}','FOMO','Fosse mouille');
INSERT INTO public."CaractCoursEau_OrgLit"("ID_OrgLit", code, valeur) VALUES ('OrgLit_{8d11287c-8c3a-4e5f-8055-9b02b9794249}','CSCU','Cascade ou chute');
INSERT INTO public."CaractCoursEau_OrgLit"("ID_OrgLit", code, valeur) VALUES ('OrgLit_{9dc1a7f8-f29c-4a8d-9905-9b9dc69aa6fe}','LTPL','Lit plat');
INSERT INTO public."CaractCoursEau_OrgLit"("ID_OrgLit", code, valeur) VALUES ('OrgLit_{ef811d06-8c9f-44da-86b8-5ff2c11c112b}','DURI','Dune et ride');
INSERT INTO public."CaractCoursEau_OrgLit"("ID_OrgLit", code, valeur) VALUES ('OrgLit_{faea0500-bf9b-4554-afd9-a01b437c081f}','BAGR','Banc de gravier');

-- Table: public.CaractCoursEau_TypMil

-- DROP TABLE IF EXISTS public."CaractCoursEau_TypMil";

CREATE TABLE IF NOT EXISTS public."CaractCoursEau_TypMil"
(
    "ID_TypMil" text COLLATE pg_catalog."default" NOT NULL,
    code text COLLATE pg_catalog."default" NOT NULL,
    valeur text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "CaractCoursEau_TypMil_pkey" PRIMARY KEY ("ID_TypMil")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."CaractCoursEau_TypMil"
    OWNER to geof_maitre;

REVOKE ALL ON TABLE public."CaractCoursEau_TypMil" FROM geof_invite;

GRANT SELECT ON TABLE public."CaractCoursEau_TypMil" TO geof_utilisateur;

GRANT ALL ON TABLE public."CaractCoursEau_TypMil" TO geof_maitre;

GRANT SELECT ON TABLE public."CaractCoursEau_TypMil" TO geof_invite;

INSERT INTO public."CaractCoursEau_TypMil"("ID_TypMil", code, valeur) VALUES ('TypMil_{4eb5a045-ce08-4d79-a014-8e8595bcc021}','CRE','Cours d''eau');
INSERT INTO public."CaractCoursEau_TypMil"("ID_TypMil", code, valeur) VALUES ('TypMil_{63e0366f-1ab4-4f55-a8e9-246e0e582f53}','LAC','Lac');

-- Table: public.Tbl_Pct_33

-- DROP TABLE IF EXISTS public."Tbl_Pct_33";

CREATE TABLE IF NOT EXISTS public."Tbl_Pct_33"
(
    "ID_Pct" text COLLATE pg_catalog."default" NOT NULL,
    code text COLLATE pg_catalog."default" NOT NULL,
    valeur text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Tbl_Pct33_pkey" PRIMARY KEY ("ID_Pct")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Tbl_Pct_33"
    OWNER to geof_maitre;

REVOKE ALL ON TABLE public."Tbl_Pct_33" FROM geof_invite;

GRANT SELECT ON TABLE public."Tbl_Pct_33" TO geof_utilisateur;

GRANT ALL ON TABLE public."Tbl_Pct_33" TO geof_maitre;

GRANT SELECT ON TABLE public."Tbl_Pct_33" TO geof_invite;

INSERT INTO public."Tbl_Pct_33"("ID_Pct", code, valeur) VALUES ('Pct_{6bc1b6ba-349c-4144-9796-d8e95d2a98d4}','66','33-66%');
INSERT INTO public."Tbl_Pct_33"("ID_Pct", code, valeur) VALUES ('Pct_{ada61a09-a46e-44e4-ba2e-faaa8a19a3c2}','33','0-33%');
INSERT INTO public."Tbl_Pct_33"("ID_Pct", code, valeur) VALUES ('Pct_{c48c6461-99d6-4bc9-ad24-32ef38566fc5}','100','66-100%');

-- Ajout des colonnes dans le formulaire Form_CaractCoursEau

ALTER TABLE IF EXISTS public."Form_CaractCoursEau" ADD COLUMN "Typ_Milieu" text COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "Connectivite" text COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "Prof_Moy" integer;
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "Larg_LitMin" double precision;
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "Pres_Debris" text COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "Comment_Perturb" text COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "Subst_RocMer" integer;
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "Subst_GrosBloc" integer;
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "Subst_Bloc" integer;
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "Subst_Galet" integer;
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "Subst_Caillou" integer;
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "Subst_Grav" integer;
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "Subst_Sab" integer;
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "Subst_Lim" integer;
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "Subst_Arg" integer;
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "Subst_LitFor" integer;
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "Subst_DebOrg" integer;
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "Subst_Autre" integer;
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "Rec_PltEmerg" text COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "Rec_PltFlot" text COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "Rec_PltSubm" text COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "Rec_Tot" text COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "Org_Lit" text COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "Obstacle" text COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "Methode_Biophys" text COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "D_Eros_Pct" text COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "D_Perturb_Pct" text COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "D_Perturb_Typ" text COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "G_Eros_Pct" text COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "G_Perturb_Pct" text COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "G_Perturb_Typ" text COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "Hab_Poiss" text COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "Potent_Poiss" text COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "Hab_Autre" text COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "EspFaun_Obs" text COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "Autre_Rive" boolean;
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "Eros_Lit" text COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "Caract_Station" text COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public."Form_CaractCoursEau"
    ADD COLUMN "Nm_CrEau" text COLLATE pg_catalog."default";

-- Ajout d'une colonne dans FormSect_SP_Veget
ALTER TABLE IF EXISTS public."FormSect_SP_Veget"
    ADD COLUMN "Rive" text COLLATE pg_catalog."default";

-- Ajout d'une table de types de peuplements pour le formulaire MH
CREATE TABLE IF NOT EXISTS public."MH_TypPeupl"
(
    "ID_TypPeupl" text COLLATE pg_catalog."default" NOT NULL,
    code text COLLATE pg_catalog."default" NOT NULL,
    valeur text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "MH_TypPeupl_pkey" PRIMARY KEY ("ID_TypPeupl")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."MH_TypPeupl"
    OWNER to geof_maitre;

REVOKE ALL ON TABLE public."MH_TypPeupl" FROM geof_invite;

GRANT SELECT ON TABLE public."MH_TypPeupl" TO geof_utilisateur;

GRANT ALL ON TABLE public."MH_TypPeupl" TO geof_maitre;

GRANT SELECT ON TABLE public."MH_TypPeupl" TO geof_invite;


INSERT INTO public."MH_TypPeupl"("ID_TypPeupl","code","valeur") VALUES ('TypPeupl_{0a32522c-c0ad-4062-9ec1-f51b1fb7d311}','TOMBR','Tourbière ombrotrophe (bog)');
INSERT INTO public."MH_TypPeupl"("ID_TypPeupl","code","valeur") VALUES ('TypPeupl_{1983d595-c320-4bf2-8226-a8a74a0fd859}','MARBO','Marécage arborescent');
INSERT INTO public."MH_TypPeupl"("ID_TypPeupl","code","valeur") VALUES ('TypPeupl_{26015a5e-1e3a-4302-98ec-0dc2dcf882e1}','FARBU','Friche arbustive');
INSERT INTO public."MH_TypPeupl"("ID_TypPeupl","code","valeur") VALUES ('TypPeupl_{2f12f1c7-59eb-4ac9-a0ff-52101727f80b}','FEUIL','Forêt feuillue');
INSERT INTO public."MH_TypPeupl"("ID_TypPeupl","code","valeur") VALUES ('TypPeupl_{468b033d-b839-454a-a4da-f04349eabc8d}','TBOIS','Tourbière boisée');
INSERT INTO public."MH_TypPeupl"("ID_TypPeupl","code","valeur") VALUES ('TypPeupl_{5ab3a3f6-c4b3-4545-bf81-0b1a93bce9ba}','MARAI','Marais');
INSERT INTO public."MH_TypPeupl"("ID_TypPeupl","code","valeur") VALUES ('TypPeupl_{770865e9-bf0d-4422-a62a-7852f52180f6}','MIXTE','Forêt mixte');
INSERT INTO public."MH_TypPeupl"("ID_TypPeupl","code","valeur") VALUES ('TypPeupl_{80bbe791-00b5-401c-80d1-7792c8c920e2}','MARBU','Marécage arbustif');
INSERT INTO public."MH_TypPeupl"("ID_TypPeupl","code","valeur") VALUES ('TypPeupl_{98324efd-7657-4cda-b763-467d8af6dbdf}','ETANG','Étang');
INSERT INTO public."MH_TypPeupl"("ID_TypPeupl","code","valeur") VALUES ('TypPeupl_{cb0edab3-9b7a-41e5-af19-19fe5da0f6fe}','FARBO','Friche arborescente');
INSERT INTO public."MH_TypPeupl"("ID_TypPeupl","code","valeur") VALUES ('TypPeupl_{cf312195-6ef6-416b-add0-a1bfcedb6d34}','FRHER','Friche herbacée');
INSERT INTO public."MH_TypPeupl"("ID_TypPeupl","code","valeur") VALUES ('TypPeupl_{d318eb54-92e5-42fe-9cd2-73af60e856ab}','CONIF','Forêt coniférienne');
INSERT INTO public."MH_TypPeupl"("ID_TypPeupl","code","valeur") VALUES ('TypPeupl_{e634fa91-4938-4dd3-9080-e09b4c757820}','TMINER','Tourbière minérotrophe (fen)');
INSERT INTO public."MH_TypPeupl"("ID_TypPeupl","code","valeur") VALUES ('TypPeupl_{e7377542-dce2-47f9-af6c-d37474a3da3f}','AUTRE','Autre');

-- Ajout d'une colonne pour pouvoir inscrire une valeur manuellement
ALTER TABLE "Form_MHH" ADD COLUMN "Typ_Peupl_Det" text;