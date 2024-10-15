SELECT SUBSTRING_INDEX("Eduardo Henrique Fabri", " ", 1) AS 'Primeiro Nome';

SELECT STR_TO_DATE('23/08/2006', '%d/%m/%Y') AS 'Nascimento';
						-- ou
SELECT STR_TO_DATE('23-08-2006', '%d-%m-%Y') AS 'Nascimento';

-- y minusculo é para anos com [YY], enquanto Y MAISCULO é para [YYYY]
SELECT STR_TO_DATE('23-08-90', '%d-%m-%y') AS 'Nascimento';

