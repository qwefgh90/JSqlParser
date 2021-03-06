---
-- #%L
-- JSQLParser library
-- %%
-- Copyright (C) 2004 - 2019 JSQLParser
-- %%
-- Dual licensed under GNU LGPL 2.1 or Apache License 2.0
-- #L%
---
select 
prod_category, prod_subcategory, country_id, cust_city, count(*)
   from  products, sales, customers
   where sales.prod_id = products.prod_id 
   and sales.cust_id=customers.cust_id 
   and sales.time_id = '01-oct-00'
   and customers.cust_year_of_birth between 1960 and 1970
group by grouping sets 
  (
   (prod_category, prod_subcategory, country_id, cust_city),
   (prod_category, prod_subcategory, country_id),
   (prod_category, prod_subcategory),
    country_id
  )
order by prod_category, prod_subcategory, country_id, cust_city

--@SUCCESSFULLY_PARSED_AND_DEPARSED first on Aug 3, 2021, 7:20:08 AM