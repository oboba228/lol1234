CREATE TABLE table_shawarma (
    name varchar(50),
    ingredients varchar(200),
    mass varchar(20),
    additives varchar(100),
    meat varchar(50),
    cabbage varchar(50),
    cucumber varchar(50),
    tomato varchar(50),
    sauce varchar(50),
    tortilla varchar(50)
);

INSERT INTO table_shawarma (name, ingredients, mass, additives, meat, cabbage, cucumber, tomato, sauce, tortilla) VALUES
('Донер Чикен', 'Курица, Капуста, Помидор, Маринованный огурец', '300гр, 400гр', 'Мясо, Сыр, Кетчуп, Майонез, Огурец, Помидор', 'курица', 'айсберг', 'обычный', 'обычный', 'чесночный', 'обычная или сырная'),
('Донер Чиз', 'Лепешка, Курица, Капуста, Помидор, Сыр, Сырный соус, Чесночный соус', '400гр, 550гр', 'Маринованный огурец, Перец сладкий, Халапеньо, Лук свежий', 'курица', 'айсберг', 'обычный', 'обычный', 'сырный, чесночный', 'обычная или сырная'),
('Голландская шаурма', 'Мясо куриное, огурец, томат, сыр, капуста, сырный соус', '400гр Размер: L/XL', 'Мясо, Огурец, Лук маринованный, Сыр, Халапеньо, Барбекю, Майонез', 'курица', 'айсберг', 'обычный', 'томат', 'Барбакю, майонез', 'Барбакю, майонез'),
('Техасская шаурма', 'Мясо куриное, огурец, томат, чипсы, укропный соус, соус барбекю', '400гр, 600гр, Размер: L/XL', 'Мясо, Огурец, Лук маринованный, Сыр, Халапеньо, Барбекю, Майонез', 'курица', 'айсберг', 'обычный', 'томат', 'укропный, барбекю', 'Барбакю, майонез');

SELECT * FROM table_shawarma WHERE meat = 'курица' AND cabbage = 'айсберг';
SELECT * FROM table_shawarma WHERE additives like 'сыр' OR sauce = 'сырный, чесночный';
SELECT * FROM table_shawarma WHERE NOT tomato = 'обычный';

SELECT * FROM table_shawarma ORDER BY meat ASC;
UPDATE table_shawarma
SET mass = '350гр'
WHERE name = 'Донер Чикен';

UPDATE table_shawarma
SET mass = '500гр'
WHERE name = 'Донер Чиз';

UPDATE table_shawarma
SET tomato = 'томат'
WHERE name = 'Голландская шаурма';

UPDATE table_shawarma
SET mass = '550гр'
WHERE name = 'Техасская шаурма';

SELECT * FROM table_shawarma; 