CREATE TABLE t (a int, b text) USING deltalake;
INSERT INTO t VALUES (1, 'a'), (2, 'b'), (3, 'c');
TRUNCATE t;
SELECT * FROM t;
DROP TABLE t;
