SELECT * FROM users;

SELECT user_name FROM users
WHERE user_role = 'student';

SELECT id FROM users;

SELECT user_name FROM users;

SELECT user_name, email FROM users;

SELECT id, user_name, email, created_on FROM users;

SELECT user_name FROM users
WHERE user_password = 12333;

SELECT user_name FROM users
WHERE created_on = '2021-03-26 00:00:00';

SELECT user_name FROM users
WHERE user_name LIKE '%Анна%';

SELECT user_name FROM users
WHERE user_name LIKE '%8';

SELECT user_name FROM users
WHERE user_name LIKE '%а%';

SELECT user_name FROM users
WHERE created_on = '2021-07-12 00:00:00';

SELECT user_name FROM users
WHERE created_on = '2021-07-12 00:00:00'
AND user_name LIKE '%Andrey%';

SELECT user_name FROM users
WHERE created_on = '2021-07-12 00:00:00'
AND user_name LIKE '%8%';

SELECT user_name FROM users
WHERE id = 110;

SELECT user_name FROM users
WHERE id = 153;

SELECT user_name FROM users
WHERE id > 140;

SELECT user_name FROM users
WHERE id < 130;

SELECT user_name FROM users
WHERE id > 127 OR id < 188

SELECT user_name FROM users
WHERE id < = 137;

SELECT user_name FROM users
WHERE id > = 137;

SELECT user_name FROM users
WHERE id > 180 AND id < 190;

SELECT user_name FROM users
WHERE id BETWEEN 180 AND 190;

SELECT user_name FROM users
WHERE user_password IN ('12333', '1m313', '123313');

SELECT user_name FROM users
WHERE created_on IN ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');

SELECT MIN(id) AS min_id FROM users;

SELECT MAX(id) AS max_id FROM users;

SELECT COUNT(id) AS count_users FROM users;

SELECT id, user_name, created_on FROM users
ORDER BY created_on ASC;

SELECT id, user_name, created_on FROM users
ORDER BY created_on DESC;