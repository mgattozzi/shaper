CREATE TABLE new_packages (
  id int PRIMARY KEY NOT NULL,
  arch TEXT NOT NULL,
  aur TEXT NOT NULL,
  ubuntu TEXT NOT NULL,
  ubuntu_dev TEXT NOT NULL
);

INSERT INTO new_packages SELECT id, arch, aur, ubuntu, ubuntu_dev FROM packages;

DROP TABLE IF EXISTS packages;
ALTER TABLE  new_packages RENAME TO packages;
