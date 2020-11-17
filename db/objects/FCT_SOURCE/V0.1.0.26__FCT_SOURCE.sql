CREATE TABLE FCT_SOURCE (
	id                            integer primary key generated by default as IDENTITY
	, name                        text
	, geometry                    geometry(Polygon,4326)
	, publication_date            date
	, notes                       text
);
INSERT INTO FCT_SOURCE (id, name, publication_date) VALUES (1, 'Malawi', '2019-01-01');
INSERT INTO FCT_SOURCE (id, name) VALUES (2, 'Gambia Prynand Paul');

COMMENT ON TABLE FCT_SOURCE IS 'The names of the various Food Composition Tables from which we derive the information about food composition';
