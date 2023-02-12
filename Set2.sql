/*Set Query 2

Query to display farm produce whose basket quantity is between 4kg and 6kg
using set membership 'in' operator
*/

SELECT * FROM farmmanagement.farmproduce;
select farmProducename,farmproducebasketquantity
from farmproduce 
where farmproducebasketquantity in ( select farmproducebasketquantity  from farmproduce 
 where farmproducebasketquantity between 4 and 6);
 
