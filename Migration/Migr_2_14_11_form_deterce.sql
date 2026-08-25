-- Table: public.form_deterce

-- DROP TABLE IF EXISTS public.form_deterce;

CREATE TABLE IF NOT EXISTS public.form_deterce
(
    id_deterce character varying COLLATE pg_catalog."default" NOT NULL,
    id_even character varying COLLATE pg_catalog."default" NOT NULL,
    thalweg character varying COLLATE pg_catalog."default",
    lit_struct character varying COLLATE pg_catalog."default",
    berges character varying COLLATE pg_catalog."default",
    masq_for character varying COLLATE pg_catalog."default",
    subst_blocs character varying COLLATE pg_catalog."default",
    tronc_enterre character varying COLLATE pg_catalog."default",
    ecoul_amont character varying COLLATE pg_catalog."default",
    ecoul_aval character varying COLLATE pg_catalog."default",
    trace_hist_ecoul character varying COLLATE pg_catalog."default",
    ouvrage_captation character varying COLLATE pg_catalog."default",
    abs_autorisation character varying COLLATE pg_catalog."default",
    cont_hydro character varying COLLATE pg_catalog."default",
    cont_topo character varying COLLATE pg_catalog."default",
    decret_exclu character varying COLLATE pg_catalog."default",
    corresp_spatiale character varying COLLATE pg_catalog."default",
    lim_spatiale_exclusion character varying COLLATE pg_catalog."default",
    valid_temp_decret character varying COLLATE pg_catalog."default",
    empr_rout_para character varying COLLATE pg_catalog."default",
    empr_rout_loca character varying COLLATE pg_catalog."default",
    fonct_drain_chaussee character varying COLLATE pg_catalog."default",
    res_drain_artificiel character varying COLLATE pg_catalog."default",
    recep_ecoul_ident character varying COLLATE pg_catalog."default",
    conti_hydro character varying COLLATE pg_catalog."default",
    trace_hist_mod character varying COLLATE pg_catalog."default",
    inadeq_pente character varying COLLATE pg_catalog."default",
    conflu_heritees character varying COLLATE pg_catalog."default",
    trace_mitoyen_cadastral character varying COLLATE pg_catalog."default",
    recep_cours_eau character varying COLLATE pg_catalog."default",
    appart_reseau_drain character varying COLLATE pg_catalog."default",
    usage_excl_drain_irrig character varying COLLATE pg_catalog."default",
    creat_anth_lit character varying COLLATE pg_catalog."default",
    bv_inf_100ha character varying COLLATE pg_catalog."default",
    abs_capt_cours_eau character varying COLLATE pg_catalog."default",
    drain_mh_resurg character varying COLLATE pg_catalog."default",
    perte_cours_eau_travaux character varying COLLATE pg_catalog."default",
    ouvr_rejet_ponct character varying COLLATE pg_catalog."default",
    morpho_reversible character varying COLLATE pg_catalog."default",
    impacts_morpho_limites character varying COLLATE pg_catalog."default",
    cntxt_sols_artif character varying COLLATE pg_catalog."default",
    auto_hydro character varying COLLATE pg_catalog."default",
    veget_hygro character varying COLLATE pg_catalog."default",
    faune_aqua character varying COLLATE pg_catalog."default",
    irrevers_morpho character varying COLLATE pg_catalog."default",
    cntxt_physio_atyp character varying COLLATE pg_catalog."default",
    utilisateur character varying COLLATE pg_catalog."default",
    result_auto text COLLATE pg_catalog."default",
    result_conf text COLLATE pg_catalog."default",
    comment text COLLATE pg_catalog."default",
    CONSTRAINT form_deterce_pkey PRIMARY KEY (id_deterce)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.form_deterce
    OWNER to geof_maitre;

REVOKE ALL ON TABLE public.form_deterce FROM geof_invite;
REVOKE ALL ON TABLE public.form_deterce FROM geof_utilisateur;

GRANT INSERT ON TABLE public.form_deterce TO geof_invite;

GRANT ALL ON TABLE public.form_deterce TO geof_maitre;

GRANT INSERT, DELETE, SELECT, UPDATE ON TABLE public.form_deterce TO geof_utilisateur;

-- Ajout colonne epoque dans Evenement
ALTER TABLE public."Evenement" ADD COLUMN epoque text;


-- FUNCTION: public.form_deterce_insert_gest()

-- DROP FUNCTION IF EXISTS public.form_deterce_insert_gest();

CREATE OR REPLACE FUNCTION public.form_deterce_insert_gest()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN
INSERT INTO public."Obs_Ligne" ( "ID_OBS",geom,"Utilisateur","Type_OBS")
VALUES (NEW."ID_OBS",NEW.geom,NEW.util_geom,NEW.type_geom);

INSERT INTO public."Evenement" ("ID_EVEN","ID_Employ","ID_Proprio","ID_Proj","Verif_Err","ID_OBS_L","Heure","Date","Utilisateur","Comment","Type_Obs","ID_Station","ID_Licence","Proprio_donnee","Prive","epoque")
VALUES (NEW."ID_EVEN",NEW."ID_Employ",NEW."ID_Proprio",NEW."ID_Proj",NEW."Verif_Err",NEW."ID_OBS_L",NEW."Heure",NEW."Date",NEW.util_even,NEW.comment_even,NEW."Type_Obs",NEW."ID_Station",NEW."ID_Licence",NEW."Proprio_donnee",NEW."Prive",NEW."epoque");

INSERT INTO form_deterce (id_deterce,id_even,thalweg,lit_struct,berges,masq_for,subst_blocs,tronc_enterre,ecoul_amont,ecoul_aval,trace_hist_ecoul,ouvrage_captation,abs_autorisation,cont_hydro,cont_topo,decret_exclu,corresp_spatiale,lim_spatiale_exclusion,valid_temp_decret,empr_rout_para,empr_rout_loca,fonct_drain_chaussee,res_drain_artificiel,recep_ecoul_ident,conti_hydro,trace_hist_mod,inadeq_pente,conflu_heritees,trace_mitoyen_cadastral,recep_cours_eau,appart_reseau_drain,usage_excl_drain_irrig,creat_anth_lit,bv_inf_100ha,abs_capt_cours_eau,drain_mh_resurg,perte_cours_eau_travaux,ouvr_rejet_ponct,morpho_reversible,impacts_morpho_limites,cntxt_sols_artif,auto_hydro,veget_hygro,faune_aqua,irrevers_morpho,cntxt_physio_atyp,utilisateur,result_auto,result_conf,comment)
VALUES (NEW.id_deterce,NEW.id_even_form,NEW.thalweg,NEW.lit_struct,NEW.berges,NEW.masq_for,NEW.subst_blocs,NEW.tronc_enterre,NEW.ecoul_amont,NEW.ecoul_aval,NEW.trace_hist_ecoul,NEW.ouvrage_captation,NEW.abs_autorisation,NEW.cont_hydro,NEW.cont_topo,NEW.decret_exclu,NEW.corresp_spatiale,NEW.lim_spatiale_exclusion,NEW.valid_temp_decret,NEW.empr_rout_para,NEW.empr_rout_loca,NEW.fonct_drain_chaussee,NEW.res_drain_artificiel,NEW.recep_ecoul_ident,NEW.conti_hydro,NEW.trace_hist_mod,NEW.inadeq_pente,NEW.conflu_heritees,NEW.trace_mitoyen_cadastral,NEW.recep_cours_eau,NEW.appart_reseau_drain,NEW.usage_excl_drain_irrig,NEW.creat_anth_lit,NEW.bv_inf_100ha,NEW.abs_capt_cours_eau,NEW.drain_mh_resurg,NEW.perte_cours_eau_travaux,NEW.ouvr_rejet_ponct,NEW.morpho_reversible,NEW.impacts_morpho_limites,NEW.cntxt_sols_artif,NEW.auto_hydro,NEW.veget_hygro,NEW.faune_aqua,NEW.irrevers_morpho,NEW.cntxt_physio_atyp,NEW.utilisateur,NEW.result_auto,NEW.result_conf,NEW.comment_form);

RETURN NEW;
END;
$BODY$;

ALTER FUNCTION public.form_deterce_insert_gest()
    OWNER TO doadmin;

-- FUNCTION: public.form_deterce_update_gest()

-- DROP FUNCTION IF EXISTS public.form_deterce_update_gest();

CREATE OR REPLACE FUNCTION public.form_deterce_update_gest()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN

UPDATE public."Obs_Ligne"
SET 
geom = NEW.geom,
"Utilisateur" = NEW.util_geom,
"Type_OBS" = NEW.type_geom
WHERE "ID_OBS" = OLD."ID_OBS";

UPDATE public."Evenement"
SET
"ID_Employ" = NEW."ID_Employ",
"ID_Proprio" = NEW."ID_Proprio",
"ID_Proj" = NEW."ID_Proj",
"Verif_Err" = NEW."Verif_Err",
"ID_OBS_L" = NEW."ID_OBS_L",
"Heure" = NEW."Heure",
"Date" = NEW."Date",
"Utilisateur" = NEW.util_even,
"Comment" = NEW.comment_even,
"Type_Obs" = NEW."Type_Obs",
"ID_Station" = NEW."ID_Station",
"ID_Licence" = NEW."ID_Licence",
"Proprio_donnee" = NEW."Proprio_donnee",
"Prive" = NEW."Prive",
"epoque" = NEW."epoque"
WHERE "ID_EVEN" = OLD."ID_EVEN";

UPDATE form_deterce
SET
id_even = NEW.id_even_form,
thalweg = NEW.thalweg,
lit_struct = NEW.lit_struct,
berges = NEW.berges,
masq_for = NEW.masq_for,
subst_blocs = NEW.subst_blocs,
tronc_enterre = NEW.tronc_enterre,
ecoul_amont = NEW.ecoul_amont,
ecoul_aval = NEW.ecoul_aval,
trace_hist_ecoul = NEW.trace_hist_ecoul,
ouvrage_captation = NEW.ouvrage_captation,
abs_autorisation = NEW.abs_autorisation,
cont_hydro = NEW.cont_hydro,
cont_topo = NEW.cont_topo,
decret_exclu = NEW.decret_exclu,
corresp_spatiale = NEW.corresp_spatiale,
lim_spatiale_exclusion = NEW.lim_spatiale_exclusion,
valid_temp_decret = NEW.valid_temp_decret,
empr_rout_para = NEW.empr_rout_para,
empr_rout_loca = NEW.empr_rout_loca,
fonct_drain_chaussee = NEW.fonct_drain_chaussee,
res_drain_artificiel = NEW.res_drain_artificiel,
recep_ecoul_ident = NEW.recep_ecoul_ident,
conti_hydro = NEW.conti_hydro,
trace_hist_mod = NEW.trace_hist_mod,
inadeq_pente = NEW.inadeq_pente,
conflu_heritees = NEW.conflu_heritees,
trace_mitoyen_cadastral = NEW.trace_mitoyen_cadastral,
recep_cours_eau = NEW.recep_cours_eau,
appart_reseau_drain = NEW.appart_reseau_drain,
usage_excl_drain_irrig = NEW.usage_excl_drain_irrig,
creat_anth_lit = NEW.creat_anth_lit,
bv_inf_100ha = NEW.bv_inf_100ha,
abs_capt_cours_eau = NEW.abs_capt_cours_eau,
drain_mh_resurg = NEW.drain_mh_resurg,
perte_cours_eau_travaux = NEW.perte_cours_eau_travaux,
ouvr_rejet_ponct = NEW.ouvr_rejet_ponct,
morpho_reversible = NEW.morpho_reversible,
impacts_morpho_limites = NEW.impacts_morpho_limites,
cntxt_sols_artif = NEW.cntxt_sols_artif,
auto_hydro = NEW.auto_hydro,
veget_hygro = NEW.veget_hygro,
faune_aqua = NEW.faune_aqua,
irrevers_morpho = NEW.irrevers_morpho,
cntxt_physio_atyp = NEW.cntxt_physio_atyp,
utilisateur = NEW.utilisateur,
result_auto = NEW.result_auto,
result_conf = NEW.result_conf,
comment = NEW.comment_form
WHERE id_deterce = OLD.id_deterce;

RETURN NEW;
END;
$BODY$;

ALTER FUNCTION public.form_deterce_update_gest()
    OWNER TO doadmin;
-- FUNCTION: public.form_deterce_delete_gest()

-- DROP FUNCTION IF EXISTS public.form_deterce_delete_gest();

CREATE OR REPLACE FUNCTION public.form_deterce_delete_gest()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN

DELETE FROM public."Obs_Ligne"
WHERE "ID_OBS" = OLD."ID_OBS";

DELETE FROM public."Evenement"
WHERE "ID_EVEN" = OLD."ID_EVEN";

DELETE FROM form_deterce
WHERE id_deterce = OLD.id_deterce;

RETURN OLD;
END;
$BODY$;

ALTER FUNCTION public.form_deterce_delete_gest()
    OWNER TO doadmin;

	
-- View: public.form_deterce_v

-- DROP VIEW public.form_deterce_v;

CREATE OR REPLACE VIEW public.form_deterce_v
 AS
 SELECT a."ID_OBS",
    a.geom,
    a."Utilisateur" AS util_geom,
    a."Type_OBS" AS type_geom,
    b."ID_EVEN",
    b."ID_Employ",
    b."ID_Proprio",
    b."ID_Proj",
    b."Verif_Err",
    b."ID_OBS_L",
    b."Heure",
    b."Date",
    b."Utilisateur" AS util_even,
    b."Comment" AS comment_even,
    b."Type_Obs",
    b."ID_Station",
    b."ID_Licence",
    b."Proprio_donnee",
    b."Prive",
    b."epoque",
    c.id_deterce,
    c.id_even AS id_even_form,
    c.thalweg,
    c.lit_struct,
    c.berges,
    c.masq_for,
    c.subst_blocs,
    c.tronc_enterre,
    c.ecoul_amont,
    c.ecoul_aval,
    c.trace_hist_ecoul,
    c.ouvrage_captation,
    c.abs_autorisation,
    c.cont_hydro,
    c.cont_topo,
    c.decret_exclu,
    c.corresp_spatiale,
    c.lim_spatiale_exclusion,
    c.valid_temp_decret,
    c.empr_rout_para,
    c.empr_rout_loca,
    c.fonct_drain_chaussee,
    c.res_drain_artificiel,
    c.recep_ecoul_ident,
    c.conti_hydro,
    c.trace_hist_mod,
    c.inadeq_pente,
    c.conflu_heritees,
    c.trace_mitoyen_cadastral,
    c.recep_cours_eau,
    c.appart_reseau_drain,
    c.usage_excl_drain_irrig,
    c.creat_anth_lit,
    c.bv_inf_100ha,
    c.abs_capt_cours_eau,
    c.drain_mh_resurg,
    c.perte_cours_eau_travaux,
    c.ouvr_rejet_ponct,
    c.morpho_reversible,
    c.impacts_morpho_limites,
    c.cntxt_sols_artif,
    c.auto_hydro,
    c.veget_hygro,
    c.faune_aqua,
    c.irrevers_morpho,
    c.cntxt_physio_atyp,
    c.utilisateur,
    c.result_auto,
    c.result_conf,
    c.comment AS comment_form
   FROM form_deterce c
	JOIN "Evenement" b ON b."ID_EVEN" = c."id_even"
	JOIN "Obs_Ligne" a ON a."ID_OBS" = b."ID_OBS_L"
  WHERE c.id_deterce IS NOT NULL AND c.utilisateur::text ~~ concat(USER, '%') OR replace(USER::text, "substring"(USER::text, "position"(USER::text, '_'::text)), ''::text) = c.utilisateur::text;

ALTER TABLE public.form_deterce_v
    OWNER TO doadmin;

GRANT ALL ON TABLE public.form_deterce_v TO doadmin;
GRANT ALL ON TABLE public.form_deterce_v TO geof_maitre;
GRANT INSERT, DELETE, SELECT, UPDATE ON TABLE public.form_deterce_v TO geof_utilisateur;


CREATE OR REPLACE TRIGGER form_deterce_delete_tr
    INSTEAD OF DELETE
    ON public.form_deterce_v
    FOR EACH ROW
    EXECUTE FUNCTION public.form_deterce_delete_gest();


CREATE OR REPLACE TRIGGER form_deterce_insert_tr
    INSTEAD OF INSERT
    ON public.form_deterce_v
    FOR EACH ROW
    EXECUTE FUNCTION public.form_deterce_insert_gest();


CREATE OR REPLACE TRIGGER form_deterce_update_tr
    INSTEAD OF UPDATE 
    ON public.form_deterce_v
    FOR EACH ROW
    EXECUTE FUNCTION public.form_deterce_update_gest();

ALTER TABLE public."Tbl_Projets" ADD COLUMN deterce integer;