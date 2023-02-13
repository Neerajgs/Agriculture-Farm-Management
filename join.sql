/*Join Query

Query to display harvester name along with thier farm produce using
join statement
*/

select harvester.harvesterName,harvester.harvesterID,farmproduce.farmproducename
from harvester
join farmproduce on harvester.harvesterID = farmproduce.harvesterID;


