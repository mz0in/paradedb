-- JOIN two deltalake tables
CREATE TABLE t (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department_id INT
) USING deltalake;
CREATE TABLE s (
    id INT PRIMARY KEY,
    department_name VARCHAR(50)
) USING deltalake;
INSERT INTO t (id, name, department_id) VALUES
(1, 'Alice', 101),
(2, 'Bob', 102),
(3, 'Charlie', 103),
(4, 'David', 101);
INSERT INTO s (id, department_name) VALUES
(101, 'Human Resources'),
(102, 'Finance'),
(103, 'IT');
SELECT COUNT(*)
FROM t
JOIN s ON t.department_id = s.id;
-- JOIN a heap and deltalake table
CREATE TABLE u (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department_id INT
) USING deltalake;
CREATE TABLE v (
    id INT PRIMARY KEY,
    department_name VARCHAR(50)
);
INSERT INTO u (id, name, department_id) VALUES
(1, 'Alice', 101),
(2, 'Bob', 102),
(3, 'Charlie', 103),
(4, 'David', 101);
INSERT INTO v (id, department_name) VALUES
(101, 'Human Resources'),
(102, 'Finance'),
(103, 'IT');
SELECT COUNT(*)
FROM u
JOIN v ON u.department_id = v.id;
-- Cleanup
DROP TABLE s, t, u, v;
