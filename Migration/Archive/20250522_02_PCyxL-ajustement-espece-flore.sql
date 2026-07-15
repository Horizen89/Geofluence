-- ajustement espece flore
-- depends: 20250522_01_BCh48-valuemap-form-agri

UPDATE "Tbl_EspecesFlore"
SET "Statut hydrique" = 'OBL'
WHERE "ID_SPP" = 'SPP_{80a3c3ec-db49-4d5e-a304-c2294cdd0e5d}';

UPDATE "Tbl_EspecesFlore"
SET "Statut hydrique" = 'NI'
WHERE "ID_SPP" in ('SPP_{d20ccca9-cfe7-4f76-afc7-dc5c0e2529e1}','SPP_{fc3e86a9-40dc-46b0-a68f-456aa92c1e22}');

UPDATE "Tbl_EspecesFlore"
SET "Statut hydrique" = 'FACH'
WHERE "ID_SPP" = 'SPP_{33e82c90-ef8b-4005-b800-ed7898a6efb2}';

UPDATE "Tbl_EspecesFlore"
SET "Statut hydrique" = '-'
WHERE "ID_SPP" = 'SPP_{7b88cbde-fe85-4b41-9f4c-97cf959611c3}';

UPDATE "Tbl_EspecesFlore"
SET "Nom francais" = 'euphorbe côtelée'
WHERE "ID_SPP" = 'SPP_{f465adf8-5648-4c08-95e5-d5f49b890d21}';
