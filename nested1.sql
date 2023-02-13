/*
Nested Query
Query to display farmers name whose nationality is India*/

use farmmanagement;
Select farmername
from Farmers
where farmerPhoneNumber in ( SELECT farmerPhoneNumber  
from Farmers where farmerNationality ='India');


