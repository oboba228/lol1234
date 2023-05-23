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
('����� �����', '������, �������, �������, ������������ ������', '300��, 400��', '����, ���, ������, �������, ������, �������', '������', '�������', '�������', '�������', '���������', '������� ��� ������'),
('����� ���', '�������, ������, �������, �������, ���, ������ ����, ��������� ����', '400��, 550��', '������������ ������, ����� �������, ���������, ��� ������', '������', '�������', '�������', '�������', '������, ���������', '������� ��� ������'),
('����������� ������', '���� �������, ������, �����, ���, �������, ������ ����', '400�� ������: L/XL', '����, ������, ��� ������������, ���, ���������, �������, �������', '������', '�������', '�������', '�����', '�������, �������', '�������, �������'),
('��������� ������', '���� �������, ������, �����, �����, �������� ����, ���� �������', '400��, 600��, ������: L/XL', '����, ������, ��� ������������, ���, ���������, �������, �������', '������', '�������', '�������', '�����', '��������, �������', '�������, �������');

SELECT * FROM table_shawarma WHERE meat = '������' AND cabbage = '�������';
SELECT * FROM table_shawarma WHERE additives like '���' OR sauce = '������, ���������';
SELECT * FROM table_shawarma WHERE NOT tomato = '�������';

SELECT * FROM table_shawarma ORDER BY meat ASC;
UPDATE table_shawarma
SET mass = '350��'
WHERE name = '����� �����';

UPDATE table_shawarma
SET mass = '500��'
WHERE name = '����� ���';

UPDATE table_shawarma
SET tomato = '�����'
WHERE name = '����������� ������';

UPDATE table_shawarma
SET mass = '550��'
WHERE name = '��������� ������';

SELECT * FROM table_shawarma; 