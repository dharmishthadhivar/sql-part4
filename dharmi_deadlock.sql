
use college; 
 
SET @deadlock_priority = 'HIGH';  
start  TRANSACTION;
UPDATE table2 SET data = 'Priyanka From Transaction2' WHERE Id = 1;
UPDATE table1 SET data = 'Anurag From Transaction2' WHERE Id = 1;
