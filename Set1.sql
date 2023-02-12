/*Set Query 1

Query to dispaly the farm produce whose quantity is the range of 2-4 and 4-6 
using set union operator
*/

use farmmanagement;
select farmProducename,farmproducebasketquantity
from farmproduce 
where farmproducebasketquantity between 2 and 4
union
select farmProducename,farmproducebasketquantity
from farmproduce 
where farmproducebasketquantity between 4 and 6;




