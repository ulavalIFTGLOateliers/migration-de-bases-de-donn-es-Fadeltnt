-- Supprimer la contrainte de clé étrangère
ALTER TABLE musician
DROP FOREIGN KEY fk_bandName;

-- Supprimer les colonnes ajoutées
ALTER TABLE musician
DROP COLUMN bandName,
DROP COLUMN role;

-- Supprimer la contrainte de clé primaire et revenir à la colonne originale
ALTER TABLE musician
DROP PRIMARY KEY,
CHANGE COLUMN musicianName singerName varchar(50) NOT NULL,
ADD PRIMARY KEY (singerName);

-- Renommer la table musician en singer
ALTER TABLE musician RENAME TO singer;

-- Supprimer la table band
DROP TABLE IF EXISTS band;
