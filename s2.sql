/*Simple Query 2

Query to dispaly the farm produce with their quantities in kg arranged in descending 
oreder in descending order
*/

use farmmanagement;
select farmProducename,farmproducebasketquantity
from farmproduce
order by farmproducebasketquantity desc;