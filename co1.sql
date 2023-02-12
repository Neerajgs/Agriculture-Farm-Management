/*Corellated Query 1

Query to display farmers with 0 farm tools using corelated query
*/

use farmmanagement;
select farmerName,farmerID
from farmers
where not exists (select farmerID from farmtools where farmers.farmerID = farmtools.farmerID);

