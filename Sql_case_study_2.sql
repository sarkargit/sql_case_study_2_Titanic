-- 1. Show the first 10 rows of the dataset.
select * from titanic limit 10;
-- 2. Find the number of passengers who survived.
select * from titanic;
select count(*) as "Passanger_survived" from titanic 
where Survived;
-- 3. Find the average age of all passengers.
select avg(Age) as Average_Age   from titanic ;
-- 4. Find the number of passengers in each class.
select * from titanic;
select Pclass,count(*) As Per_class_count
from titanic group by Pclass;
-- 5. Find the first 10 rows of the dataset sorted by passenger class in descending order.
select * from titanic
order by Pclass desc limit 10 ;
-- 6. Find the number of passengers in each class sorted by class in ascending order.
select * from titanic;
select Pclass,count(*) from titanic group by Pclass order by Pclass asc;
select Pclass,count(*) from titanic group by Pclass order by count(*) asc;
-- 7. Find the average fare paid by passengers in each class.
select pclass ,avg(Fare) as Average_Fare from titanic group by pclass;
-- 8. Find the name of the passenger with the highest fare.
select * from titanic;
select Name,Fare from titanic where fare = (select max(Fare) from titanic);
-- 9. Find the name of the passenger who had the highest age among the survivors.
select Name,Age	 from titanic where Age = (select max(age) from titanic where Survived =1);
-- 10. Find the number of passengers who paid more than the average fare.
(select Name from titanic where Fare > (select Avg(fare) from titanic ));
-- 11. Find the name of the passenger who had the most parents or children on board.
select name from titanic where Parch = (select max(Parch) from titanic);
-- 12. Find the number of male and female passengers who survived, 
-- and order the results by sex in ascending order: 
select * from titanic;
select sex , count(*) as NUmber_Survived from titanic where Survived = 1
group by sex
order by sex asc;

-- 13. Find the name, age, and fare of the oldest passenger who survived.
select Name,Age,Fare from titanic where age= (select max(Age) from titanic where Survived =1)
and Survived = 1;
-- 14. Find the name and age of the youngest female passenger who survived in third class.
select name,age from titanic where Sex = "female" and Pclass = 3 and Survived = 1
and age = (select min(Age) from titanic where Sex = "female" and Pclass = 3 and Survived = 1);
-- 15. Find Number of male and female passengers.
SELECT sex, COUNT(*) AS NumberOfPassengers
FROM titanic 
GROUP BY sex;
-- 16. Find Number of male and female passengers who survived
SELECT sex, COUNT(*) AS NumberOfPassengers
FROM titanic where Survived = 1
GROUP BY sex;



-- 













