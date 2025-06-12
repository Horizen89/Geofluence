-- formulaire eee 2025
-- depends: 20250522_02_PCyxL-ajustement-espece-flore

-- Ajout espece autre

INSERT INTO "Tbl_EspecesFlore"("Nom latin", "Noms vernaculaires Latin", "Nom francais", "Noms vernaculaires Francais", "Arbo", "Arbu", "Herb", "Code", "Statut hydrique", "Designation", "Derniere mise a jour", "ID_SPP")
VALUES ('AUTRE',	'AUTRE', 'AUTRE', 'AUTRE', 1, 1, 1, 'AUT', '1', 'EEE', 'Michel Landry; 2023-05-09', 'SPP_{ecd8b1b0-aa89-4e6a-b924-74d55e2ca196}');


-- Creation du formulaire Activite de detection 

CREATE TABLE public."Form_ActDetection" (
id_act text primary key,
id_even text not null,
utilisateur text not null,
courriel text,
date date,
date_fin date,
heure time without time zone,
lat float,
long float,
precision text,
region text,
munic text,
mrc text,
code_regi text,
nom_site text,
superficie float,
perimetre float,
eee_detec text,
id_eee text,
activite text,
methode text,
effort text,
comment text,
photo text
);

ALTER TABLE IF EXISTS public."Form_ActDetection"
    OWNER to geof_maitre;

REVOKE ALL ON TABLE public."Form_ActDetection" FROM geof_utilisateur;

GRANT INSERT ON TABLE public."Form_ActDetection" TO geof_invite;

GRANT ALL ON TABLE public."Form_ActDetection" TO geof_maitre;

GRANT DELETE, INSERT, SELECT, UPDATE ON TABLE public."Form_ActDetection" TO geof_utilisateur;

CREATE OR REPLACE VIEW public."Form_ActDetection_V"
 AS
 SELECT *
   FROM "Form_ActDetection"
  WHERE "Form_ActDetection"."utilisateur" ~~ concat(USER, '%') OR replace(USER::text, "substring"(USER::text, "position"(USER::text, '_'::text)), ''::text) = "Form_ActDetection"."utilisateur";

ALTER TABLE public."Form_ActDetection_V"
OWNER TO geof_maitre;

GRANT INSERT, SELECT ON TABLE public."Form_ActDetection_V" TO geof_invite;
GRANT ALL ON TABLE public."Form_ActDetection_V" TO geof_maitre;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE public."Form_ActDetection_V" TO geof_utilisateur;

-- Ajouts au formulaire EEE

ALTER TABLE public."Form_EEE"
ADD COLUMN id_act text,
ADD COLUMN region text,
ADD COLUMN code_regi text,
ADD COLUMN regne text,
ADD COLUMN categorie text,
ADD COLUMN sp_faune text,
ADD COLUMN sp_poisson text,
ADD COLUMN sp_champi text,
ADD COLUMN courriel text,
ADD COLUMN autre_sp text,
ADD COLUMN autre_nom_latin text,
ADD COLUMN lat_flore text,
ADD COLUMN lat_faune text,
ADD COLUMN lat_poiss text,
ADD COLUMN lat_champi text,
ADD COLUMN nb_individus int,
ADD COLUMN precision text,
ADD COLUMN mrc text,
ADD COLUMN hote text;


DROP VIEW IF EXISTS public."Form_EEE_V";

CREATE VIEW public."Form_EEE_V"
 AS
 SELECT *
   FROM "Form_EEE"
  WHERE "Form_EEE"."Utilisateur" ~~ concat(USER, '%') OR replace(USER::text, "substring"(USER::text, "position"(USER::text, '_'::text)), ''::text) = "Form_EEE"."Utilisateur";

ALTER TABLE public."Form_EEE_V"
OWNER TO geof_maitre;

GRANT INSERT, SELECT ON TABLE public."Form_EEE_V" TO geof_invite;
GRANT ALL ON TABLE public."Form_EEE_V" TO geof_maitre;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE public."Form_EEE_V" TO geof_utilisateur;

-- liste des regnes

CREATE TABLE public."Tbl_Regne"(
id_regne text PRIMARY KEY,
code text NOT NULL,
description text NOT NULL
);

ALTER TABLE IF EXISTS public."Tbl_Regne"
OWNER to geof_maitre;

REVOKE ALL ON TABLE public."Tbl_Regne" FROM geof_utilisateur;
GRANT SELECT ON TABLE public."Tbl_Regne" TO geof_invite;
GRANT ALL ON TABLE public."Tbl_Regne" TO geof_maitre;
GRANT SELECT ON TABLE public."Tbl_Regne" TO geof_utilisateur;

-- liste categories especes

CREATE TABLE public."Tbl_CatEspece"(
id_cat text PRIMARY KEY NOT NULL,
code text NOT NULL,
description text NOT NULL
);

ALTER TABLE IF EXISTS public."Tbl_CatEspece"
OWNER to geof_maitre;

REVOKE ALL ON TABLE public."Tbl_CatEspece" FROM geof_utilisateur;
GRANT SELECT ON TABLE public."Tbl_CatEspece" TO geof_invite;
GRANT ALL ON TABLE public."Tbl_CatEspece" TO geof_maitre;
GRANT SELECT ON TABLE public."Tbl_CatEspece" TO geof_utilisateur;

-- liste especes fauniques

CREATE TABLE public."EEE_Faune"(
id_faune text PRIMARY KEY,
nom_commun text NOT NULL,
nom_sc text,
pres_qc text,
categorie text
);

ALTER TABLE IF EXISTS public."EEE_Faune"
OWNER to geof_maitre;

REVOKE ALL ON TABLE public."EEE_Faune" FROM geof_utilisateur;
GRANT SELECT ON TABLE public."EEE_Faune" TO geof_invite;
GRANT ALL ON TABLE public."EEE_Faune" TO geof_maitre;
GRANT SELECT ON TABLE public."EEE_Faune" TO geof_utilisateur;

-- insert oui non

INSERT INTO public."Tbl_OuiNon"("ID_OuiNon", "Valeur") VALUES ('Tbl_{acae655a-8005-41f4-a73a-8a99ab64dc91}', 'Ne sais pas');

-- insert EEE_Faune (sauf poisson)

INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{b3d2410d-a31d-4ab7-8720-76402169d40e}', 'Escargot des bois', 'Cepaea nemoralis', 'Établie', 'Mollusques, crustacés et autres invertébrés');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{7ffec635-af4e-40e5-90b2-c14605837432}', 'Limace noire', 'Arion ater', 'Établie', 'Mollusques, crustacés et autres invertébrés');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{41f23a2e-83a4-4604-ad62-ee973054c9b9}', 'Moule quagga', 'Dreissena bugensis', 'Établie', 'Mollusques, crustacés et autres invertébrés');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{79243c60-0465-4d3d-ac4f-40c3221b31d1}', 'Moule zébrée', 'Dreissena polymorpha', 'Établie ', 'Mollusques, crustacés et autres invertébrés');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{068bde59-5579-40c3-8464-6f4cceb3823e}', 'Nasse de Nouvelle-Zélande', 'Potamopyrgus antipodarum', 'Absente', 'Mollusques, crustacés et autres invertébrés');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{a3a11245-c7ed-4abe-a52b-25fe5462b603}', 'Petite corbeille d''Asie', 'Corbicula fluminea', 'Observation récurrente', 'Mollusques, crustacés et autres invertébrés');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{53ad5bc0-16ad-42fb-974f-7e3fde43f27a}', 'Vivipare chinoise', 'Cipangopaludina chinensis', 'Établie ', 'Mollusques, crustacés et autres invertébrés');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{90164222-e1f5-4153-91dd-3ca3059a10b9}', 'Vivipare géorgienne', 'Viviparius georgianus', 'Établie', 'Mollusques, crustacés et autres invertébrés');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{e4f42f97-6886-42ee-93b5-b357a792240f}', 'Méduse d''eau douce', 'Craspedacusta sowerbii', 'Établie ', 'Mollusques, crustacés et autres invertébrés');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{1927e4ff-4d32-4f56-b0cd-b045e2d3faf6}', 'Cladocère épineux', 'Bythotrephes longimanus', 'Établie ', 'Mollusques, crustacés et autres invertébrés');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{a9bd9710-312d-4d5a-81fc-c1d44f28c708}', 'Crabe chinois à mitaines', 'Eriocheir sinensis', 'Observation ponctuelle ', 'Mollusques, crustacés et autres invertébrés');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{12436f26-c739-4521-a6c8-226b4927f6df}', 'Crevette rouge sang', 'Hemimysis anomala', 'Établie', 'Mollusques, crustacés et autres invertébrés');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{52e39f26-5a7d-4fbd-a76a-b848b82e44ea}', 'Écrevisse à taches rouges', 'Faxonius rusticus', 'Établie', 'Mollusques, crustacés et autres invertébrés');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{7c48298d-70d1-41f8-a6cc-9e8185704e33}', 'Écrevisse de Louisiane', 'Procambarus clarkii', 'Absente', 'Mollusques, crustacés et autres invertébrés');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{a94a78fe-aae9-4d1c-a390-790dc3158d96}', 'Écrevisse marbrée', 'Procambarus virginalis', 'Absente', 'Mollusques, crustacés et autres invertébrés');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{ecfe6f41-0e81-4372-ad51-dfa6e6894abf}', 'Petite crevette d''eau douce', 'Echinogammarus ischnus', 'Établie', 'Mollusques, crustacés et autres invertébrés');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{2af0559c-99e2-40aa-99e8-5e6a7b59904e}', 'Puce d''eau en hameçon', 'Cercopagis pengoi', 'Établie', 'Mollusques, crustacés et autres invertébrés');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{72a42dfb-3944-4a2a-8047-bbaaa300fa34}', 'Tortue à oreilles rouges', 'Trachemys scripta elegans', 'Observation récurrente ', 'Reptiles et amphibiens');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{bf0bd43a-2b5e-422a-b98a-c813ce0c6eee}', 'Cerf rouge ou wapiti', 'Cervus elaphus', 'Observation récurrente', 'Mammifères');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{61fe9af7-99f7-4c98-a683-ee2c4ede3e3f}', 'Cerf sika ', 'Cervus nippon', 'Observation ponctuelle', 'Mammifères');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{b578c55a-a4ac-48bf-bafb-c0b8d4c16c21}', 'Daim européen', 'Dama dama', 'Observation ponctuelle', 'Mammifères');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{03603179-316e-4442-a554-b9e012fbcaa5}', 'Chat domestique', 'Felis silvestris catus', 'Établie', 'Mammifères');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{89b3b2c7-37b0-4f35-871e-08bbdceb9897}', 'Lapin domestique', 'Oryctolagus cuniculus', 'Observation récurrente', 'Mammifères');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{04935dd5-31c4-4e3c-9ad0-fec45cb01860}', 'Rat noir', 'Rattus rattus', 'Établie', 'Mammifères');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{6c71a872-c1a3-4317-aed6-5afb7567c329}', 'Rat surmulot', 'Rattus norvegicus', 'Établie', 'Mammifères');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{76589fcd-5f74-45e0-bfae-7c246747fd14}', 'Sanglier', 'Sus scrofa', 'Observation récurrente', 'Mammifères');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{bbc3490f-90da-449e-89e8-2bc8d858cf02}', 'Porc domestique (races rustiques)', 'Sus scrofa domesticus', 'Observation récurrente', 'Mammifères');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{12c2352b-98ee-439e-bf31-2cd59dec80d1}', 'Souris commune', 'Mus musculus', 'Établie ', 'Mammifères');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{217b39e8-b5e6-4974-a1c4-d556bd156f45}', 'Conure veuve', 'Myopsitta monachus', 'Observation ponctuelle', 'Oiseaux');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{50e8f93d-6ebb-41e6-b468-70967b47fd60}', 'Cygne tuberculé', 'Cygnus olor', 'Observation ponctuelle', 'Oiseaux');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{4deaf0ee-9a20-4161-8b90-a96ee0f7a392}', 'Étourneau sansonnet', 'Sturnus vulgaris', 'Établie', 'Oiseaux');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{f77d9607-85bc-4f01-898d-15a80d603172}', 'Faisan de Colchide', 'Phasianus colchicus', 'Observation récurrente', 'Oiseaux');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{0e1692ec-ba38-4c60-b76e-2746290d108e}', 'Moineau domestique', 'Passer domesticus', 'Établie', 'Oiseaux');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{d856aa6c-700c-457e-adfb-bed1c57b0f4b}', 'Pigeon biset', 'Columba livia', 'Établie', 'Oiseaux');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, categorie) VALUES ('EEE_{9cad7857-58d2-4467-ac1b-b2a6945c81e7}', 'Longicorne étoilé', 'Anoplophora glabripennis', 'Mollusques, crustacés et autres invertébrés');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, categorie) VALUES ('EEE_{c97b2a44-6ad5-45b1-911a-44c1d4423ac3}', 'Vivipare chinoise', 'Bellamya chinensis', 'Mollusques, crustacés et autres invertébrés');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, categorie) VALUES ('EEE_{0c431b1a-57f8-4244-8834-f5d68d234c6b}', 'Coccinelle asiatique', 'Harmonia axyridis', 'Insectes et vers');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, categorie) VALUES ('EEE_{c123b46b-640d-4695-a73b-7c4ae60d51b4}', 'Écrevisse à taches rouges', 'Orconectes rusticus', 'Mollusques, crustacés et autres invertébrés');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, categorie) VALUES ('EEE_{a69dbde0-a72c-4df5-bfeb-40e4e7706fd1}', 'Scarabée japonais', 'Popillia japonica', 'Insectes et vers');

-- Tbl_EspecesPoisson

ALTER TABLE public."Tbl_EspecesPoisson"
ADD COLUMN "designation" text;

INSERT INTO public."Tbl_EspecesPoisson"(id_especes, nom_vulgaire, nom_binominal, designation) VALUES ('Peche_{f95ca5fd-054a-48e4-9548-8cbbb8646cca}', 'Carpe à grosse tête', 'Hypophtalmichthys nobilis', 'EEE');
INSERT INTO public."Tbl_EspecesPoisson"(id_especes, nom_vulgaire, nom_binominal, designation) VALUES ('Peche_{a2037c8c-8555-4cde-a3fe-2cba8b3b7ba0}', 'Carpe argentée', 'Hypophtalmichthys molitrix', 'EEE');
INSERT INTO public."Tbl_EspecesPoisson"(id_especes, nom_vulgaire, nom_binominal, designation) VALUES ('Peche_{96116e72-f528-4d7c-89b1-5c38e415d9dc}', 'Carpe noire', 'Mylopharyngodon piceus', 'EEE');
INSERT INTO public."Tbl_EspecesPoisson"(id_especes, nom_vulgaire, nom_binominal, designation) VALUES ('Peche_{6b6a6e9a-05b5-4895-ab0c-46999bb06217}', 'Gobie à nez tubulaire', 'Proterorhinus semilunaris', 'EEE');
INSERT INTO public."Tbl_EspecesPoisson"(id_especes, nom_vulgaire, nom_binominal, designation) VALUES ('Peche_{26ad7fec-16e3-4903-abad-7c71d1a3033d}', 'Poisson à tête de serpent', 'Channa argus', 'EEE');
INSERT INTO public."Tbl_EspecesPoisson"(id_especes, nom_vulgaire, nom_binominal, designation) VALUES ('Peche_{176190e4-223b-4934-8856-09b446556cc9}', 'Saumon rose', 'Oncorhynchus gorbuscha', 'EEE');
INSERT INTO public."Tbl_EspecesPoisson"(id_especes, nom_vulgaire, nom_binominal, designation) VALUES ('Peche_{04ccacfc-59f1-4ec7-9c53-f139ab765dfb}', 'Faux gardon', 'Pseudorasbora parva', 'EEE');
INSERT INTO public."Tbl_EspecesPoisson"(id_especes, nom_vulgaire, nom_binominal, designation) VALUES ('Peche_{be2ad594-b2c8-4b9f-aba5-0018f5d51aba}', 'Carpe koï', 'Cyprinus carpio', 'EEE');
INSERT INTO public."Tbl_EspecesPoisson"(id_especes, nom_vulgaire, nom_binominal, designation) VALUES ('Peche_{92d99b8e-21b5-49e0-b9a4-74621d0949c9}', 'Poisson rouge', 'Carassius auratus', 'EEE');


UPDATE public."Tbl_EspecesPoisson"
SET designation = 'EEE'
WHERE id_especes in (
'Peche_{7d893c67-3cd4-4b50-8801-4d064c951d9a}', 
'Peche_{f7011af4-4759-416c-9922-1a5c0302316a}', 
'Peche_{79cb8f28-f7b7-44b7-98f8-23bc296a9071}', 
'Peche_{0688819c-eea5-477d-99c5-1840e3405139}', 
'Peche_{6e7e6c57-0079-43cf-bb40-f1645881489a}',
'Peche_{8c24e6fe-a86c-4008-9fec-bd68957277fe}', 
'Peche_{d0d3a90c-1844-4de4-bca5-5b31bc8e947d}', 
'Peche_{c7a8d41f-1dc3-4887-898f-ea9cf91b9468}',
'Peche_{e4a0d33c-09cd-4d05-bd77-eb0e2553045f}',
'Peche_{a1023254-0bd7-4597-a55f-602e5f162d96}');

-- insert Tbl_Regne

INSERT INTO public."Tbl_Regne"(id_regne, code, description) VALUES ('Tbl_{ef92689e-0fe9-4021-91d6-2637f01d11bd}', 'faune', 'Faune');
INSERT INTO public."Tbl_Regne"(id_regne, code, description) VALUES ('Tbl_{7fc2b0f3-4f6d-49b7-983b-c67765ef0ad9}', 'flore', 'Flore');

-- insert Tbl_CatEspece

INSERT INTO public."Tbl_CatEspece"(id_cat, code, description) VALUES ('Tbl_{a941f2f1-d80e-40b3-83bc-ad4f19557e43}', 'champi', 'Champignons');
INSERT INTO public."Tbl_CatEspece"(id_cat, code, description) VALUES ('Tbl_{812da1c5-e8af-492e-b58e-365e0a2047f9}', 'insect_vers', 'Insectes et vers');
INSERT INTO public."Tbl_CatEspece"(id_cat, code, description) VALUES ('Tbl_{45327e24-5dde-475a-b374-97091545b6c9}', 'mcai', 'Mollusques, crustacés et autres invertébrés');
INSERT INTO public."Tbl_CatEspece"(id_cat, code, description) VALUES ('Tbl_{587854fd-ec84-418a-9fb8-d6b4ce6a32f2}', 'oiseaux', 'Oiseaux');
INSERT INTO public."Tbl_CatEspece"(id_cat, code, description) VALUES ('Tbl_{45222f13-5b7c-4f1b-9043-06ca1ef38b44}', 'mammifere', 'Mammifères');
INSERT INTO public."Tbl_CatEspece"(id_cat, code, description) VALUES ('Tbl_{d5e2cbe3-66d8-44a9-a8f2-13bf51711f70}', 'paf', 'Plantes aquatiques flottantes');
INSERT INTO public."Tbl_CatEspece"(id_cat, code, description) VALUES ('Tbl_{21c1ba0d-3b3f-4a0f-ad82-70b62a21a670}', 'pas', 'Plantes aquatiques submergées');
INSERT INTO public."Tbl_CatEspece"(id_cat, code, description) VALUES ('Tbl_{1fce8c5b-e2ee-42ff-b356-4af67b09b80a}', 'pamt', 'Plantes de milieux terrestres');
INSERT INTO public."Tbl_CatEspece"(id_cat, code, description) VALUES ('Tbl_{949e020f-cb5d-4ef5-87be-6aa443c7432a}', 'pe', 'Plantes émergentes');
INSERT INTO public."Tbl_CatEspece"(id_cat, code, description) VALUES ('Tbl_{fe39651e-b38b-4d3e-9dc6-6fa74e7cfdd8}', 'rept_amphi', 'Reptiles et amphibiens');
INSERT INTO public."Tbl_CatEspece"(id_cat, code, description) VALUES ('Tbl_{dc269804-e66d-4d2a-91d7-632f04ce4593}', 'poissons', 'Poissons');

-- id de categorie dans EEE_Faune

UPDATE public."EEE_Faune" SET categorie = 'Tbl_{45327e24-5dde-475a-b374-97091545b6c9}' where id_faune = 'EEE_{b3d2410d-a31d-4ab7-8720-76402169d40e}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{45327e24-5dde-475a-b374-97091545b6c9}' where id_faune = 'EEE_{7ffec635-af4e-40e5-90b2-c14605837432}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{45327e24-5dde-475a-b374-97091545b6c9}' where id_faune = 'EEE_{41f23a2e-83a4-4604-ad62-ee973054c9b9}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{45327e24-5dde-475a-b374-97091545b6c9}' where id_faune = 'EEE_{79243c60-0465-4d3d-ac4f-40c3221b31d1}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{45327e24-5dde-475a-b374-97091545b6c9}' where id_faune = 'EEE_{068bde59-5579-40c3-8464-6f4cceb3823e}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{45327e24-5dde-475a-b374-97091545b6c9}' where id_faune = 'EEE_{a3a11245-c7ed-4abe-a52b-25fe5462b603}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{45327e24-5dde-475a-b374-97091545b6c9}' where id_faune = 'EEE_{53ad5bc0-16ad-42fb-974f-7e3fde43f27a}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{45327e24-5dde-475a-b374-97091545b6c9}' where id_faune = 'EEE_{90164222-e1f5-4153-91dd-3ca3059a10b9}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{45327e24-5dde-475a-b374-97091545b6c9}' where id_faune = 'EEE_{e4f42f97-6886-42ee-93b5-b357a792240f}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{45327e24-5dde-475a-b374-97091545b6c9}' where id_faune = 'EEE_{1927e4ff-4d32-4f56-b0cd-b045e2d3faf6}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{45327e24-5dde-475a-b374-97091545b6c9}' where id_faune = 'EEE_{a9bd9710-312d-4d5a-81fc-c1d44f28c708}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{45327e24-5dde-475a-b374-97091545b6c9}' where id_faune = 'EEE_{12436f26-c739-4521-a6c8-226b4927f6df}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{45327e24-5dde-475a-b374-97091545b6c9}' where id_faune = 'EEE_{52e39f26-5a7d-4fbd-a76a-b848b82e44ea}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{45327e24-5dde-475a-b374-97091545b6c9}' where id_faune = 'EEE_{7c48298d-70d1-41f8-a6cc-9e8185704e33}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{45327e24-5dde-475a-b374-97091545b6c9}' where id_faune = 'EEE_{a94a78fe-aae9-4d1c-a390-790dc3158d96}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{45327e24-5dde-475a-b374-97091545b6c9}' where id_faune = 'EEE_{ecfe6f41-0e81-4372-ad51-dfa6e6894abf}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{45327e24-5dde-475a-b374-97091545b6c9}' where id_faune = 'EEE_{2af0559c-99e2-40aa-99e8-5e6a7b59904e}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{fe39651e-b38b-4d3e-9dc6-6fa74e7cfdd8}' where id_faune = 'EEE_{72a42dfb-3944-4a2a-8047-bbaaa300fa34}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{45222f13-5b7c-4f1b-9043-06ca1ef38b44}' where id_faune = 'EEE_{bf0bd43a-2b5e-422a-b98a-c813ce0c6eee}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{45222f13-5b7c-4f1b-9043-06ca1ef38b44}' where id_faune = 'EEE_{61fe9af7-99f7-4c98-a683-ee2c4ede3e3f}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{45222f13-5b7c-4f1b-9043-06ca1ef38b44}' where id_faune = 'EEE_{b578c55a-a4ac-48bf-bafb-c0b8d4c16c21}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{45222f13-5b7c-4f1b-9043-06ca1ef38b44}' where id_faune = 'EEE_{03603179-316e-4442-a554-b9e012fbcaa5}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{45222f13-5b7c-4f1b-9043-06ca1ef38b44}' where id_faune = 'EEE_{89b3b2c7-37b0-4f35-871e-08bbdceb9897}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{45222f13-5b7c-4f1b-9043-06ca1ef38b44}' where id_faune = 'EEE_{04935dd5-31c4-4e3c-9ad0-fec45cb01860}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{45222f13-5b7c-4f1b-9043-06ca1ef38b44}' where id_faune = 'EEE_{6c71a872-c1a3-4317-aed6-5afb7567c329}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{45222f13-5b7c-4f1b-9043-06ca1ef38b44}' where id_faune = 'EEE_{76589fcd-5f74-45e0-bfae-7c246747fd14}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{45222f13-5b7c-4f1b-9043-06ca1ef38b44}' where id_faune = 'EEE_{bbc3490f-90da-449e-89e8-2bc8d858cf02}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{45222f13-5b7c-4f1b-9043-06ca1ef38b44}' where id_faune = 'EEE_{12c2352b-98ee-439e-bf31-2cd59dec80d1}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{587854fd-ec84-418a-9fb8-d6b4ce6a32f2}' where id_faune = 'EEE_{217b39e8-b5e6-4974-a1c4-d556bd156f45}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{587854fd-ec84-418a-9fb8-d6b4ce6a32f2}' where id_faune = 'EEE_{50e8f93d-6ebb-41e6-b468-70967b47fd60}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{587854fd-ec84-418a-9fb8-d6b4ce6a32f2}' where id_faune = 'EEE_{4deaf0ee-9a20-4161-8b90-a96ee0f7a392}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{587854fd-ec84-418a-9fb8-d6b4ce6a32f2}' where id_faune = 'EEE_{f77d9607-85bc-4f01-898d-15a80d603172}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{587854fd-ec84-418a-9fb8-d6b4ce6a32f2}' where id_faune = 'EEE_{0e1692ec-ba38-4c60-b76e-2746290d108e}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{587854fd-ec84-418a-9fb8-d6b4ce6a32f2}' where id_faune = 'EEE_{d856aa6c-700c-457e-adfb-bed1c57b0f4b}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{45327e24-5dde-475a-b374-97091545b6c9}' where id_faune = 'EEE_{9cad7857-58d2-4467-ac1b-b2a6945c81e7}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{45327e24-5dde-475a-b374-97091545b6c9}' where id_faune = 'EEE_{c97b2a44-6ad5-45b1-911a-44c1d4423ac3}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{812da1c5-e8af-492e-b58e-365e0a2047f9}' where id_faune = 'EEE_{0c431b1a-57f8-4244-8834-f5d68d234c6b}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{45327e24-5dde-475a-b374-97091545b6c9}' where id_faune = 'EEE_{c123b46b-640d-4695-a73b-7c4ae60d51b4}';
UPDATE public."EEE_Faune" SET categorie = 'Tbl_{812da1c5-e8af-492e-b58e-365e0a2047f9}' where id_faune = 'EEE_{a69dbde0-a72c-4df5-bfeb-40e4e7706fd1}';

-- relation info prop et activite de detection

ALTER TABLE "Form_InfoProp"
ADD COLUMN id_act text;

DROP VIEW IF EXISTS public."Form_InfoProp_V";

CREATE VIEW public."Form_InfoProp_V"
 AS
 SELECT *
   FROM "Form_InfoProp"
  WHERE "Form_InfoProp"."Utilisateur" ~~ concat(USER, '%') OR replace(USER::text, "substring"(USER::text, "position"(USER::text, '_'::text)), ''::text) = "Form_InfoProp"."Utilisateur";

ALTER TABLE public."Form_InfoProp_V"
OWNER TO geof_maitre;

GRANT INSERT, SELECT ON TABLE public."Form_InfoProp_V" TO geof_invite;
GRANT ALL ON TABLE public."Form_InfoProp_V" TO geof_maitre;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE public."Form_InfoProp_V" TO geof_utilisateur;

-- Tbl_EspecesFlore (Faudrait faire un diff pour trouver tous les changements)

ALTER TABLE "Tbl_EspecesFlore" 
ADD COLUMN categorie text;

INSERT INTO "Tbl_EspecesFlore" ("ID_SPP", "Nom francais", "Nom latin", "Designation", categorie) VALUES ('SPP_{57a3cbc0-51c0-40de-83f3-07ea855a697b}', 'Laitue d''eau', 'Pistia stratiotes', 'EEE', 'Tbl_{d5e2cbe3-66d8-44a9-a8f2-13bf51711f70}');
INSERT INTO "Tbl_EspecesFlore" ("ID_SPP", "Nom francais", "Nom latin", "Designation", categorie) VALUES ('SPP_{3f39486a-00be-4535-9cc2-93e770f2d0ed}', 'Salvinia', 'Salvinia spp.', 'EEE', 'Tbl_{d5e2cbe3-66d8-44a9-a8f2-13bf51711f70}');
INSERT INTO "Tbl_EspecesFlore" ("ID_SPP", "Nom francais", "Nom latin", "Designation", categorie) VALUES ('SPP_{7a2eea24-32a5-4fd5-8e5a-05af0049e37d}', 'Cabomba de Caroline', 'Cabomba caroliniana', 'EEE', 'Tbl_{21c1ba0d-3b3f-4a0f-ad82-70b62a21a670}');
INSERT INTO "Tbl_EspecesFlore" ("ID_SPP", "Nom francais", "Nom latin", "Designation", categorie) VALUES ('SPP_{ec162d2f-eb4d-4cfa-8fed-05a894747499}', 'Élodée dense', 'Egeria densa', 'EEE', 'Tbl_{21c1ba0d-3b3f-4a0f-ad82-70b62a21a670}');
INSERT INTO "Tbl_EspecesFlore" ("ID_SPP", "Nom francais", "Nom latin", "Designation", categorie) VALUES ('SPP_{63f7c098-9606-4ae6-8698-fccd35879b44}', 'Hydrille verticillé', 'Hydrilla verticillata', 'EEE', 'Tbl_{21c1ba0d-3b3f-4a0f-ad82-70b62a21a670}');
INSERT INTO "Tbl_EspecesFlore" ("ID_SPP", "Nom francais", "Nom latin", "Designation", categorie) VALUES ('SPP_{5dcb0e85-faae-4c37-a857-86497d6c2d00}', 'Nitelle étoilée', 'Nitellopsis obtusa', 'EEE', 'Tbl_{21c1ba0d-3b3f-4a0f-ad82-70b62a21a670}');
INSERT INTO "Tbl_EspecesFlore" ("ID_SPP", "Nom francais", "Nom latin", "Designation", categorie) VALUES ('SPP_{350759f6-7e1f-4032-ab91-5fbdacd7792c}', 'Stratiote faux-aloès', 'Stratiotes aloides', 'EEE', 'Tbl_{949e020f-cb5d-4ef5-87be-6aa443c7432a}');
INSERT INTO "Tbl_EspecesFlore" ("ID_SPP", "Nom francais", "Nom latin", "Designation", categorie) VALUES ('SPP_{af4aa913-6689-41ea-a2d0-bc340bb680c9}', 'Jacinthe d''eau', 'Eichhornia crassipes', 'EEE', 'Tbl_{d5e2cbe3-66d8-44a9-a8f2-13bf51711f70}');

UPDATE "Tbl_EspecesFlore"
SET "Designation" = 'EEE'
WHERE categorie is not null;


-- Table des regnes

INSERT INTO public."Tbl_Regne"(id_regne, code, description) VALUES ('Tbl_{2076ade0-6cac-42aa-b64a-a1170d0391a0}', 'champi', 'Champignons');
INSERT INTO public."Tbl_Regne"(id_regne, code, description) VALUES ('Tbl_{45d2116c-b35a-4c39-8b9e-13a50b487720}', 'autre', 'Autre');

-- Table caterogie 

INSERT INTO public."Tbl_CatEspece"(id_cat, code, description) VALUES ('Tbl_{d137ffdb-aefd-4c12-8cfd-da54084096a3}', 'autre', 'Autre');

-- Table champignons

CREATE TABLE public."EEE_Champi"(
id_champi text PRIMARY KEY,
nom_commun text NOT NULL,
nom_sc text,
pres_qc text,
categorie text
);

ALTER TABLE IF EXISTS public."EEE_Champi"
OWNER to geof_maitre;

REVOKE ALL ON TABLE public."EEE_Champi" FROM geof_utilisateur;
GRANT SELECT ON TABLE public."EEE_Champi" TO geof_invite;
GRANT ALL ON TABLE public."EEE_Champi" TO geof_maitre;
GRANT SELECT ON TABLE public."EEE_Champi" TO geof_utilisateur;

INSERT INTO public."EEE_Champi"(id_champi, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{4f2e0e35-09b5-4e06-b36b-4b5abae58c82}', 'Chancre du noyer cendré', 'Ophiognomonia clavigignenti-juglandacearum', 'Établie', 'Tbl_{a941f2f1-d80e-40b3-83bc-ad4f19557e43}');
INSERT INTO public."EEE_Champi"(id_champi, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{9fa0c74b-6970-42ee-b921-c00490821e99}', 'Chancre scléroderrien, race européenne', 'Gremmeniella abietina', 'Établie', 'Tbl_{a941f2f1-d80e-40b3-83bc-ad4f19557e43}');
INSERT INTO public."EEE_Champi"(id_champi, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{07b72aef-28a7-48bd-9ab9-68b44362e2d0}', 'Flétrissure du chêne', 'Bretziella fagacearum', 'Absente', 'Tbl_{a941f2f1-d80e-40b3-83bc-ad4f19557e43}');
INSERT INTO public."EEE_Champi"(id_champi, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{8e035ed1-1c69-4ef2-a0e6-48b60095ed46}', 'Maladie corticale du hêtre', 'Neonectria faginata', 'Établie', 'Tbl_{a941f2f1-d80e-40b3-83bc-ad4f19557e43}');
INSERT INTO public."EEE_Champi"(id_champi, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{d8f43d90-db4a-4294-8788-f7cdc28e24b2}', 'Maladie du rond', 'Heterobasidion irregulare', 'Établie', 'Tbl_{a941f2f1-d80e-40b3-83bc-ad4f19557e43}');
INSERT INTO public."EEE_Champi"(id_champi, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{5fa4814a-693c-46f2-90a1-8b9770be9d30}', 'Maladie hollandaise de l’orme ', 'Ophiostoma novo-ulmi', 'Établie', 'Tbl_{a941f2f1-d80e-40b3-83bc-ad4f19557e43}');
INSERT INTO public."EEE_Champi"(id_champi, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{19c097b1-7c48-4247-94a0-66b4c869b59d}', 'Rouille vésiculeuse du pin blanc', 'Cronartium ribicola', 'Établie', 'Tbl_{a941f2f1-d80e-40b3-83bc-ad4f19557e43}');
INSERT INTO public."EEE_Champi"(id_champi, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{08cca990-3f22-44be-bd42-4029b1730333}', 'Autre', '', '', 'Tbl_{a941f2f1-d80e-40b3-83bc-ad4f19557e43}');


-- Insertion des insectes

INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{a4f9880e-3598-4f98-b224-e882f9f739fb}', 'Agrile du frêne', 'Agrilus planipennis', 'Établie' ,'Tbl_{812da1c5-e8af-492e-b58e-365e0a2047f9}');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{46ff1ab0-b2be-44fc-b88d-bd3975858bea}', 'Fulgore tacheté', 'Lycorma delicatula', 'Absente' ,'Tbl_{812da1c5-e8af-492e-b58e-365e0a2047f9}');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{d8ea97a0-1250-4a75-95a5-cd35e2065451}', 'Longicorne asiatique / Longicorne étoilé', 'Anoplophora glabripennis', 'Absente' ,'Tbl_{812da1c5-e8af-492e-b58e-365e0a2047f9}');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{c045d136-f78f-4cd8-a473-ca2eaa46d9fc}', 'Longicorne brun des épinettes', 'Tetropium fuscum', 'Absente' ,'Tbl_{812da1c5-e8af-492e-b58e-365e0a2047f9}');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{df8b1d20-57ba-4b3b-8115-023a5a8f6c4d}', 'Longicorne des agrumes', 'Anoplophora chinensis', 'Absente' ,'Tbl_{812da1c5-e8af-492e-b58e-365e0a2047f9}');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{f619b237-f368-4bae-90f0-dd1f129ffd0f}', 'Puceron lanigère de la pruche', 'Adelges tsugae', 'Absente' ,'Tbl_{812da1c5-e8af-492e-b58e-365e0a2047f9}');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{494fe48b-1a11-41dc-bb85-37ebcd9e4524}', 'Spongieuse asiatique', 'Lymantria dispar asiatica, L. dispar japonica', 'Absente' ,'Tbl_{812da1c5-e8af-492e-b58e-365e0a2047f9}');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{3c66f14b-67d5-4489-ac05-ec97681f6b4e}', 'Vers de terre (regroupe plusieurs espèces)', '', 'Établie' ,'Tbl_{812da1c5-e8af-492e-b58e-365e0a2047f9}');

-- Ajustements table especes flore

UPDATE "Tbl_EspecesFlore"
SET "Designation" = 'EEE' -- étaient tous INT
WHERE "ID_SPP" in
('SPP_{613fba89-ea6c-4dfc-8efb-f83e55ae5f90}',
'SPP_{f7fac4e4-ba28-4d1a-bef2-18c79f118e2d}',
'SPP_{61190d25-45a5-479b-8def-726d1ed4218c}',
'SPP_{a88e7272-fcd6-473a-b0d0-86f4c3889200}',
'SPP_{37660400-6837-40d9-afa2-f344b529ebb3}');

INSERT INTO "Tbl_EspecesFlore" ("ID_SPP", "Nom francais", "Nom latin", "Designation", categorie) VALUES('SPP_{1ab7e159-f288-4e96-a277-4cde88311ad8}', 'chèvrefeuille de maack', 'Lonicera maackii', 'EEE', 'Tbl_{1fce8c5b-e2ee-42ff-b356-4af67b09b80a}');
INSERT INTO "Tbl_EspecesFlore" ("ID_SPP", "Nom francais", "Nom latin", "Designation", categorie) VALUES('SPP_{8090efb5-8a06-42e8-85ad-acb01c699e88}', 'kudzu', 'Pueraria montana', 'EEE', 'Tbl_{1fce8c5b-e2ee-42ff-b356-4af67b09b80a}');
INSERT INTO "Tbl_EspecesFlore" ("ID_SPP", "Nom francais", "Nom latin", "Designation", categorie) VALUES('SPP_{62dec04a-a4ea-4ecc-b9ff-6b4d8ce0a952}', 'microstégie en osier', 'Microstegium vimineum', 'EEE', 'Tbl_{1fce8c5b-e2ee-42ff-b356-4af67b09b80a}');
INSERT INTO "Tbl_EspecesFlore" ("ID_SPP", "Nom francais", "Nom latin", "Designation", categorie) VALUES('SPP_{dbc8b0d4-a1a6-4261-a7c2-163c7c42ff96}', 'oléastre à ombelles', 'Elaeagnus umbellata', 'EEE', 'Tbl_{1fce8c5b-e2ee-42ff-b356-4af67b09b80a}');

-- Ajustement poisson

INSERT INTO public."Tbl_EspecesPoisson"(id_especes, nom_vulgaire, nom_binominal, designation) VALUES ('Peche_{c694bf74-8adb-474e-aab6-c8cd2dc3c744}', 'Tête-de-serpent', 'Channa spp., Parachanna spp.', 'EEE');

UPDATE "Tbl_EspecesPoisson"
SET nom_vulgaire = 'Carpe de roseau' WHERE id_especes = 'Peche_{79cb8f28-f7b7-44b7-98f8-23bc296a9071}';

-- Renommer la table EEE_Champi

ALTER TABLE "EEE_Champi"
RENAME TO "Tbl_EspecesChampi";

-- Ajustement de Tbl_EspecesPoisson

ALTER TABLE "Tbl_EspecesPoisson"
ADD COLUMN categorie text;

UPDATE "Tbl_EspecesPoisson"
SET categorie = 'Tbl_{dc269804-e66d-4d2a-91d7-632f04ce4593}';

-- Ajout des categories mollusque et crustace

INSERT INTO public."Tbl_CatEspece"(id_cat, code, description) VALUES ('Tbl_{2de9aeae-ccf3-45dd-a26f-bdaedbe4b8ed}', 'crust', 'Crustacés');
INSERT INTO public."Tbl_CatEspece"(id_cat, code, description) VALUES ('Tbl_{6ff2dc91-d454-4038-946a-e1c504db25fe}', 'mollu', 'Mollusques');

-- Changement pour meduse

UPDATE "EEE_Faune"
SET categorie = 'Tbl_{d137ffdb-aefd-4c12-8cfd-da54084096a3}'
WHERE id_faune = 'EEE_{e4f42f97-6886-42ee-93b5-b357a792240f}';

-- Crustaces 

UPDATE "EEE_Faune"
SET categorie = 'Tbl_{2de9aeae-ccf3-45dd-a26f-bdaedbe4b8ed}'
where nom_commun in
('Cladocère épineux',
'Crabe chinois à mitaines',
'Crevette rouge sang',
'Écrevisse à taches rouges',
'Écrevisse de Louisiane',
'Écrevisse marbrée',
'Petite crevette d''eau douce',
'Puce d''eau en hameçon');

-- Mollusque

UPDATE "EEE_Faune"
SET categorie = 'Tbl_{6ff2dc91-d454-4038-946a-e1c504db25fe}'
where nom_commun in
('Escargot des bois',
'Limace noire',
'Moule quagga',
'Moule zébrée',
'Nasse de Nouvelle-Zélande',
'Petite corbeille d''Asie',
'Vivipare chinoise',
'Vivipare géorgienne'
);

-- changement du nom cat reptile 

UPDATE "Tbl_CatEspece"
SET code = 'rept',
description = 'Reptiles'
where id_cat = 'Tbl_{fe39651e-b38b-4d3e-9dc6-6fa74e7cfdd8}';

-- split insecte et vers

UPDATE "Tbl_CatEspece"
SET code = 'insect',
description = 'Insectes'
where id_cat = 'Tbl_{812da1c5-e8af-492e-b58e-365e0a2047f9}';

INSERT INTO public."Tbl_CatEspece"(id_cat, code, description) VALUES ('Tbl_{f447781e-12de-498f-bfa6-f9c829467c0c}', 'vers', 'Vers');

-- insecte et vers

INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{97ec0322-acaa-4c41-a7cc-75a6a82e963a}', 'Punaise marbrée', 'Halyomorpha halys', 'Établie ', 'Tbl_{812da1c5-e8af-492e-b58e-365e0a2047f9}');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{886a707d-102b-4da6-b464-23eb24825eed}', 'Drosophile à ailes tachetée', 'Drosophila suzukii', 'Établie', 'Tbl_{812da1c5-e8af-492e-b58e-365e0a2047f9}');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{3de6f8e9-0234-40c9-b03d-9190cc73c29b}', 'Ver plat à tête de marteau', 'Bipalium adventitium', 'Établie', 'Tbl_{f447781e-12de-498f-bfa6-f9c829467c0c}');
INSERT INTO public."EEE_Faune"(id_faune, nom_commun, nom_sc, pres_qc, categorie) VALUES ('EEE_{36a34e34-81b9-41ce-b321-ceee4f13433b}', 'Ver sauteur asiatique', 'Amynthas tokioensis', 'Observation ponctuelle', 'Tbl_{f447781e-12de-498f-bfa6-f9c829467c0c}');

UPDATE public."EEE_Faune"
SET nom_commun = 'Complexe de la spongieuse volante (anciennement spongieuse asiatique)',
nom_sc = 'Lymantria dispar asiatica / L. dispar japonica',
categorie = 'Tbl_{812da1c5-e8af-492e-b58e-365e0a2047f9}'
where id_faune = 'EEE_{494fe48b-1a11-41dc-bb85-37ebcd9e4524}';

UPDATE public."EEE_Faune"
SET nom_commun = 'Vers de terre européens (regroupe plusieurs espèces)',
categorie = 'Tbl_{f447781e-12de-498f-bfa6-f9c829467c0c}'
where id_faune = 'EEE_{3c66f14b-67d5-4489-ac05-ec97681f6b4e}';

-- Poisson : seulement retirer carassin doré

UPDATE "Tbl_EspecesPoisson"
SET designation = NULL
where id_especes = 'Peche_{f7011af4-4759-416c-9922-1a5c0302316a}';

-- supp longicorne etoile 

DELETE FROM "EEE_Faune"
where id_faune = 'EEE_{9cad7857-58d2-4467-ac1b-b2a6945c81e7}';

-- supp categorie mcai

DELETE FROM "Tbl_CatEspece"
where id_cat = 'Tbl_{45327e24-5dde-475a-b374-97091545b6c9}';

-- Tbl_EspecesPoisson : a new purpose

-- renommage de la table : peut-etre on devrait back off jusqu'a la publication de la maj

ALTER TABLE "Tbl_EspecesPoisson"
RENAME TO "Tbl_EspecesFaune";

-- Remplacement des ID

UPDATE "Tbl_EspecesFaune"
SET id_especes = REGEXP_REPLACE(id_especes, '^Peche_', 'Faune_')
WHERE id_especes LIKE 'Peche_%';

-- Insertion des EEE_Faune

-- changement des id

UPDATE "EEE_Faune"
SET id_faune = REGEXP_REPLACE(id_faune, '^EEE_', 'Faune_')
WHERE id_faune LIKE 'EEE_%';

-- transfert des données

INSERT INTO public."Tbl_EspecesFaune" (id_especes, nom_vulgaire, nom_binominal, designation, categorie)
SELECT id_faune, nom_commun, nom_sc, 'EEE', categorie
FROM public."EEE_Faune";

-- Enleve un 'autre'

DELETE FROM "Tbl_EspecesFaune" where id_especes = 'Faune_{9b533cfa-8d16-45f4-a3e3-2d4efb467441}';

UPDATE "Tbl_EspecesFaune"
set categorie = NULL
where id_especes = 'Faune_{9b533cfa-8d16-45f4-a3e3-2d4efb467441}';

-- je choke le changement de nom

ALTER TABLE "Tbl_EspecesFaune"
RENAME TO "Tbl_EspecesPoisson";

-- Duplication de especes poisson pour créer especes faune

CREATE TABLE "Tbl_EspecesFaune" AS
SELECT * FROM "Tbl_EspecesPoisson";

ALTER TABLE IF EXISTS public."Tbl_EspecesFaune"
    OWNER to geof_maitre;

REVOKE ALL ON TABLE public."Tbl_EspecesFaune" FROM geof_utilisateur;

GRANT SELECT ON TABLE public."Tbl_EspecesFaune" TO geof_invite;

GRANT ALL ON TABLE public."Tbl_EspecesFaune" TO geof_maitre;

GRANT SELECT ON TABLE public."Tbl_EspecesFaune" TO geof_utilisateur;

-- Fuck la tbl EEE_Faune baby

DROP TABLE "EEE_Faune";

-- Change les id des champignons

UPDATE "Tbl_EspecesChampi"
SET id_champi = REGEXP_REPLACE(id_champi, '^EEE_', 'Champi_')
WHERE id_champi LIKE 'EEE_%';

-- Ajout de activie detection dans tbl projet

DROP VIEW "Tbl_Projets_V";

ALTER TABLE "Tbl_Projets"
ADD COLUMN "ActDetect" smallint;

CREATE VIEW public."Tbl_Projets_V"
 AS
 SELECT *
   FROM "Tbl_Projets"
  WHERE "Tbl_Projets"."Utilisateur" ~~ concat(USER, '%') OR replace(USER::text, "substring"(USER::text, "position"(USER::text, '_'::text)), ''::text) = "Tbl_Projets"."Utilisateur";

ALTER TABLE public."Tbl_Projets_V"
    OWNER TO geof_maitre;

GRANT INSERT, SELECT ON TABLE public."Tbl_Projets_V" TO geof_invite;
GRANT ALL ON TABLE public."Tbl_Projets_V" TO geof_maitre;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE public."Tbl_Projets_V" TO geof_utilisateur;

-- ajustement de la table region

ALTER TABLE "Tbl_RegionAdmin"
ADD COLUMN code text; 

UPDATE "Tbl_RegionAdmin"
SET code = '08' WHERE "ID_Region" = 'Region_{6e168f47-2c45-4a62-806b-aafd489a6b1f}';
UPDATE "Tbl_RegionAdmin"
SET code = '01' WHERE "ID_Region" = 'Region_{b1f43496-8cc8-48b9-97f1-7f483d16b992}';
UPDATE "Tbl_RegionAdmin"
SET code = '03' WHERE "ID_Region" = 'Region_{b1952da9-9b00-4938-8826-36db6ee5e3c5}';
UPDATE "Tbl_RegionAdmin"
SET code = '17' WHERE "ID_Region" = 'Region_{3ccfdf56-e50a-4c0d-bbe0-a3759dd1147a}';
UPDATE "Tbl_RegionAdmin"
SET code = '12' WHERE "ID_Region" = 'Region_{83fcae9e-5ce1-4a01-9f59-3fbe0705e742}';
UPDATE "Tbl_RegionAdmin"
SET code = '09' WHERE "ID_Region" = 'Region_{96455047-a1b9-486c-a4ed-9f08f6ac8987}';
UPDATE "Tbl_RegionAdmin"
SET code = '05' WHERE "ID_Region" = 'Region_{d9a38cb2-e170-439e-a3bf-0bf5ee8570df}';
UPDATE "Tbl_RegionAdmin"
SET code = '11' WHERE "ID_Region" = 'Region_{d2001340-3fa0-4700-b40a-313779631120}';
UPDATE "Tbl_RegionAdmin"
SET code = '14' WHERE "ID_Region" = 'Region_{a083090c-444b-4695-8a8a-102733fd18fa}';
UPDATE "Tbl_RegionAdmin"
SET code = '15' WHERE "ID_Region" = 'Region_{4a684801-8f3a-4997-9645-6178bff5d110}';
UPDATE "Tbl_RegionAdmin"
SET code = '13' WHERE "ID_Region" = 'Region_{c2d90a7f-cc3f-4d8d-bc67-802720d279e2}';
UPDATE "Tbl_RegionAdmin"
SET code = '04' WHERE "ID_Region" = 'Region_{d6c0eb06-1224-4473-8055-7d7fb1f7307a}';
UPDATE "Tbl_RegionAdmin"
SET code = '16' WHERE "ID_Region" = 'Region_{4061247c-824a-4b00-851b-e5375ffcdca8}';
UPDATE "Tbl_RegionAdmin"
SET code = '06' WHERE "ID_Region" = 'Region_{e6b36f29-8a56-4211-bf41-22a63d9026a7}';
UPDATE "Tbl_RegionAdmin"
SET code = '10' WHERE "ID_Region" = 'Region_{d292a234-1d00-4943-81f3-644acef15973}';
UPDATE "Tbl_RegionAdmin"
SET code = '07' WHERE "ID_Region" = 'Region_{db00c4c8-095f-4c73-81a5-aacde3226b6c}';
UPDATE "Tbl_RegionAdmin"
SET code = '02' WHERE "ID_Region" = 'Region_{f12f82c8-00c3-4519-9aea-c44b780ceaaf}';

-- Ajout de la categorie amphibiens

INSERT INTO "Tbl_CatEspece" (id_cat, code, description) VALUES ('Tbl_{eb1ec7db-3074-4c8c-b2a2-77092b971955}', 'amphi', 'Amphibiens');

-- Tbl Relations

INSERT INTO public."Tbl_Relations"(id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{8e074655-0e26-43e3-b3ef-7e0182afaf55}', 'Form_ActDetection', 'Tbl_RegionAdmin', 'region', 'ID_Region', 'Region');
INSERT INTO public."Tbl_Relations"(id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{1c6c80eb-f769-440a-a144-02f18b96dc74}', 'Form_ActDetection', 'Tbl_OuiNon', 'eee_detec', 'ID_OuiNon', 'Valeur');
INSERT INTO public."Tbl_Relations"(id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{ab35649a-a588-4eaf-9101-a90efe746dd9}', 'Form_ActDetection', 'Tbl_Muni', 'mrc', 'ID_Muni', 'mrc');
INSERT INTO public."Tbl_Relations"(id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{cac52ca7-48b8-4d95-bee9-b20922377024}', 'Form_ActDetection', 'Tbl_Muni', 'munic', 'ID_Muni', 'municipalite');
INSERT INTO public."Tbl_Relations"(id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{5f14687b-a063-462e-83f4-20cf1e3185e1}', 'Form_EEE','Form_ActDetection', 'id_act', 'id_act', 'nom_site');
INSERT INTO public."Tbl_Relations"(id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{2eb5a99a-d2f8-4a28-a17e-09f023707225}', 'Form_EEE','Tbl_RegionAdmin', 'region', 'ID_Region', 'Region');
INSERT INTO public."Tbl_Relations"(id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{b53775a8-925d-475c-b095-ab529f7dd4ef}', 'Form_EEE','Tbl_Regne', 'regne', 'id_regne', 'description');
INSERT INTO public."Tbl_Relations"(id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{038a4cbc-ff33-45ae-9b26-da3c9c9e081c}', 'Form_EEE','Tbl_CatEspece', 'categorie', 'id_cat', 'description');
INSERT INTO public."Tbl_Relations"(id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{fefe61d0-d374-4d49-84a9-3dce92b683fe}', 'Form_EEE','Tbl_EspecesFlore', 'lat_flore', 'ID_SPP', 'Nom latin');
INSERT INTO public."Tbl_Relations"(id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{61ac6fdc-40a4-40bc-90b6-ef1ed8f205df}', 'Form_EEE','Tbl_Muni', 'mrc', 'ID_Muni', 'mrc');
INSERT INTO public."Tbl_Relations"(id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{e6e25e8e-697b-40f0-9ec7-faef61002eaf}', 'Form_EEE','Tbl_EspecesFaune', 'sp_faune', 'id_especes', 'nom_vulgaire');
INSERT INTO public."Tbl_Relations"(id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{21a409e0-fd80-4787-9f94-0ea51b860566}', 'Form_EEE','Tbl_EspecesFaune', 'lat_faune', 'id_especes', 'nom_binomial');
INSERT INTO public."Tbl_Relations"(id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{3de3585d-b859-4d78-985a-b5ff1bfd3cdb}', 'Form_EEE', 'Tbl_EspecesChampi', 'sp_champi', 'id_champi', 'nom_commun');
INSERT INTO public."Tbl_Relations"(id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{ae1731f7-b267-4c2a-a984-6ae79325e026}', 'Form_EEE', 'Tbl_EspecesChampi', 'lat_champi', 'id_champi', 'nom_sc');
INSERT INTO public."Tbl_Relations"(id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{fbd77231-8cd0-4bf3-9c4a-277ea829cf57}', 'Form_ActDetection', 'Tbl_RegionAdmin', 'code_regi','ID_Region', 'code');
INSERT INTO public."Tbl_Relations"(id_rel, table_orig, table_ref, col_orig, col_ref, col_val) VALUES ('Rel_{52f4f0a7-ddcf-4486-ba92-659d078082ef}', 'Form_EEE', 'Tbl_RegionAdmin', 'code_regi','ID_Region', 'code');

-- Manque Autre dans Tbl_EspecesFaune et Poisson (meme si on va la delete on va quand meme la maintenir d'ici la)

INSERT INTO "Tbl_EspecesPoisson" (id_especes, nom_vulgaire) VALUES ('Faune_{1d4c280b-aa35-44fb-881f-06706ac694e6}', 'Autre');
INSERT INTO "Tbl_EspecesFaune" (id_especes, nom_vulgaire) VALUES ('Faune_{1d4c280b-aa35-44fb-881f-06706ac694e6}', 'Autre');