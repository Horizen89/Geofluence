-- Table: public.Form_Sentier

-- DROP TABLE IF EXISTS public."Form_Sentier";

CREATE TABLE IF NOT EXISTS public."Form_Sentier"
(
    "ID_Sentier" text COLLATE pg_catalog."default" NOT NULL,
    "ID_Even" text COLLATE pg_catalog."default" NOT NULL,
    "Utilisateur" text COLLATE pg_catalog."default" NOT NULL,
    "Type_Prob" text COLLATE pg_catalog."default",
    "Probab" text COLLATE pg_catalog."default",
    "Gravite" text COLLATE pg_catalog."default",
    "Largeur" double precision,
    "Comment" text COLLATE pg_catalog."default",
    "Act_Prohib" text COLLATE pg_catalog."default",
    CONSTRAINT "Form_Sentier_pkey" PRIMARY KEY ("ID_Sentier")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Form_Sentier"
    OWNER to doadmin;

REVOKE ALL ON TABLE public."Form_Sentier" FROM geof_invite;
REVOKE ALL ON TABLE public."Form_Sentier" FROM geof_utilisateur;

GRANT ALL ON TABLE public."Form_Sentier" TO doadmin;

GRANT INSERT ON TABLE public."Form_Sentier" TO geof_invite;

GRANT TRUNCATE, INSERT, DELETE, SELECT, TRIGGER, UPDATE, REFERENCES ON TABLE public."Form_Sentier" TO geof_maitre;

GRANT INSERT, DELETE, SELECT, UPDATE ON TABLE public."Form_Sentier" TO geof_utilisateur;


-- Table: public.Sentier_ActProhib

-- DROP TABLE IF EXISTS public."Sentier_ActProhib";

CREATE TABLE IF NOT EXISTS public."Sentier_ActProhib"
(
    code text COLLATE pg_catalog."default" NOT NULL,
    valeur text COLLATE pg_catalog."default" NOT NULL,
    "ID_ActProhib" text COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Sentier_ActProhib"
    OWNER to doadmin;

REVOKE ALL ON TABLE public."Sentier_ActProhib" FROM geof_invite;
REVOKE ALL ON TABLE public."Sentier_ActProhib" FROM geof_utilisateur;

GRANT ALL ON TABLE public."Sentier_ActProhib" TO doadmin;

GRANT SELECT ON TABLE public."Sentier_ActProhib" TO geof_invite;

GRANT TRUNCATE, INSERT, DELETE, SELECT, TRIGGER, UPDATE, REFERENCES ON TABLE public."Sentier_ActProhib" TO geof_maitre;

GRANT SELECT ON TABLE public."Sentier_ActProhib" TO geof_utilisateur;


-- Table: public.Sentier_Gravite

-- DROP TABLE IF EXISTS public."Sentier_Gravite";

CREATE TABLE IF NOT EXISTS public."Sentier_Gravite"
(
    "ID_Gravite" text COLLATE pg_catalog."default" NOT NULL,
    code text COLLATE pg_catalog."default" NOT NULL,
    valeur text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Sentier_Gravite_pkey" PRIMARY KEY ("ID_Gravite")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Sentier_Gravite"
    OWNER to doadmin;

REVOKE ALL ON TABLE public."Sentier_Gravite" FROM geof_invite;
REVOKE ALL ON TABLE public."Sentier_Gravite" FROM geof_utilisateur;

GRANT ALL ON TABLE public."Sentier_Gravite" TO doadmin;

GRANT SELECT ON TABLE public."Sentier_Gravite" TO geof_invite;

GRANT TRUNCATE, INSERT, DELETE, SELECT, TRIGGER, UPDATE, REFERENCES ON TABLE public."Sentier_Gravite" TO geof_maitre;

GRANT SELECT ON TABLE public."Sentier_Gravite" TO geof_utilisateur;


-- Table: public.Sentier_Probab

-- DROP TABLE IF EXISTS public."Sentier_Probab";

CREATE TABLE IF NOT EXISTS public."Sentier_Probab"
(
    "ID_Probab" text COLLATE pg_catalog."default" NOT NULL,
    code text COLLATE pg_catalog."default" NOT NULL,
    valeur text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Sentier_Probab_pkey" PRIMARY KEY ("ID_Probab")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Sentier_Probab"
    OWNER to doadmin;

REVOKE ALL ON TABLE public."Sentier_Probab" FROM geof_invite;
REVOKE ALL ON TABLE public."Sentier_Probab" FROM geof_utilisateur;

GRANT ALL ON TABLE public."Sentier_Probab" TO doadmin;

GRANT SELECT ON TABLE public."Sentier_Probab" TO geof_invite;

GRANT TRUNCATE, INSERT, DELETE, SELECT, TRIGGER, UPDATE, REFERENCES ON TABLE public."Sentier_Probab" TO geof_maitre;

GRANT SELECT ON TABLE public."Sentier_Probab" TO geof_utilisateur;


-- Table: public.Sentier_TypeProbl

-- DROP TABLE IF EXISTS public."Sentier_TypeProbl";

CREATE TABLE IF NOT EXISTS public."Sentier_TypeProbl"
(
    "ID_TypProbl" text COLLATE pg_catalog."default" NOT NULL,
    code text COLLATE pg_catalog."default" NOT NULL,
    valeur text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Sentier_TypeProbl_pkey" PRIMARY KEY ("ID_TypProbl")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Sentier_TypeProbl"
    OWNER to doadmin;

REVOKE ALL ON TABLE public."Sentier_TypeProbl" FROM geof_invite;
REVOKE ALL ON TABLE public."Sentier_TypeProbl" FROM geof_utilisateur;

GRANT ALL ON TABLE public."Sentier_TypeProbl" TO doadmin;

GRANT SELECT ON TABLE public."Sentier_TypeProbl" TO geof_invite;

GRANT TRUNCATE, INSERT, DELETE, SELECT, TRIGGER, UPDATE, REFERENCES ON TABLE public."Sentier_TypeProbl" TO geof_maitre;

GRANT SELECT ON TABLE public."Sentier_TypeProbl" TO geof_utilisateur;


-- View: public.Form_Sentier_V

-- DROP VIEW public."Form_Sentier_V";

CREATE OR REPLACE VIEW public."Form_Sentier_V"
 AS
 SELECT "ID_Sentier",
    "ID_Even",
    "Utilisateur",
    "Type_Prob",
    "Probab",
    "Gravite",
    "Largeur",
    "Comment",
    "Act_Prohib"
   FROM "Form_Sentier"
  WHERE "Utilisateur" ~~ concat(USER, '%') OR replace(USER::text, "substring"(USER::text, "position"(USER::text, '_'::text)), ''::text) = "Utilisateur";

ALTER TABLE public."Form_Sentier_V"
    OWNER TO doadmin;

GRANT ALL ON TABLE public."Form_Sentier_V" TO doadmin;
GRANT INSERT, SELECT ON TABLE public."Form_Sentier_V" TO geof_invite;
GRANT ALL ON TABLE public."Form_Sentier_V" TO geof_maitre;
GRANT INSERT, DELETE, SELECT, UPDATE ON TABLE public."Form_Sentier_V" TO geof_utilisateur;

