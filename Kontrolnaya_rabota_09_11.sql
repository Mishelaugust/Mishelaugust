--Вар1

--1
select prod_id,prod_name, prod_price,
prod_id::text || ':' || prod_name::text as "Код: продукт" from task3_1.products
where prod_price::numeric>200 and prod_price::numeric<1000;

--2
select prod_id,prod_name, prod_price,concat(prod_id, prod_name) as "Код: Продукт",
prod_price as "Цена продукта"
from task3_1.products
where prod_price > '200' and prod_price < '1000';

--3
select prod_id,prod_name, prod_price,format('%s: %s', initcap(prod_id), initcap(prod_name)) as "Код: Продукт",
prod_price as "Цена продукта"
from task3_1.products
where prod_price > '200' and prod_price < '1000';

---4
select prod_id,prod_name, prod_price,concat_ws(':',prod_id, prod_name) as "Код: Продукт",
prod_price as "Цена продукта"
from task3_1.products
where prod_price > '200' and prod_price < '1000';

