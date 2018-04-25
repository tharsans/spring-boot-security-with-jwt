DELETE FROM country_code;
DELETE FROM user_role;
DELETE FROM role;
DELETE FROM user;

INSERT INTO role (id, name, description) VALUES (1, 'USER', 'User - has authority to view list of country codes');
INSERT INTO role (id, name, description) VALUES (2, 'ADMIN', 'Admin - has authority to view and create list of country codes');
INSERT INTO role (id, name, description) VALUES (3, 'SUPER_ADMIN', 'Super Admin - has authority to view, create and delete country codes');

INSERT INTO user (id, username, password) VALUES (1, 'user', '$2a$10$.vqKeONK..aJ1Dy1P6z5peftRXek8S0dBC4hJmiIUe8lezmO4t9nu');
INSERT INTO user (id, username, password) VALUES (2, 'admin', '$2a$10$.vqKeONK..aJ1Dy1P6z5peftRXek8S0dBC4hJmiIUe8lezmO4t9nu');
INSERT INTO user (id, username, password) VALUES (3, 'superadmin', '$2a$10$.vqKeONK..aJ1Dy1P6z5peftRXek8S0dBC4hJmiIUe8lezmO4t9nu');

INSERT INTO user_role(user_id, role_id) VALUES(1,1);
INSERT INTO user_role(user_id, role_id) VALUES(2,2);
INSERT INTO user_role(user_id, role_id) VALUES(3,3);

INSERT INTO country_code(id, name, code, iso_code) VALUES (1, 'Sri Lanka', '94', 'LK');
INSERT INTO country_code(id, name, code, iso_code) VALUES (2, 'India', '91', 'IN');
INSERT INTO country_code(id, name, code, iso_code) VALUES (3, 'United Kingdom', '44', 'GB');
INSERT INTO country_code(id, name, code, iso_code) VALUES (4, 'United States', '1', 'US');
INSERT INTO country_code(id, name, code, iso_code) VALUES (5, 'Singapore', '65', 'SG');