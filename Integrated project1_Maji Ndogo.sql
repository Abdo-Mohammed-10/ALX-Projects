select * from md_water_services.employee; 
/* What is the address of Bello Azibo? */
select address from md_water_services.employee where employee_name = 'Bello Azibo';
/* What is the name and phone number of our Microbiologist? */
select employee_name , phone_number from md_water_services.employee where position ='Micro biologist';
/* What is the source_id of the water source shared by the most number of people?
 Hint: Use a comparison operator. */
 select source_id from md_water_services.water_source order by number_of_people_served desc;
 /* What is the population of Maji Ndogo? 
Hint: Start by searching the data_dictionary table for the word 'population'.
 */
SELECT *
FROM md_water_services.data_dictionary WHERE description LIKE '%population%' ; 
SELECT * 
FROM md_water_services.global_water_access 
WHERE name = 'Maji Ndogo';
/* Which SQL query returns records of employees who are Civil Engineers residing in Dahabu or living on an avenue? */
 select * from md_water_services.employee where position ='Civil Engineer' and (province_name ='Dahabu' or address like '%Avenue%');
/* The employee’s phone number contained the digits 86 or 11. 
The employee’s last name started with either an A or an M. 
The employee was a Field Surveyor. */
SELECT employee_name
FROM md_water_services.employee
WHERE 
    (phone_number LIKE '%86%'
    OR phone_number LIKE '%11%')
    AND (employee_name LIKE '% A%' 
    OR employee_name LIKE '% M%')
    AND position = 'Field Surveyor';

/* What is the result of the following query? Choose the most appropriate description of the results set. */
SELECT *
FROM md_water_services.well_pollution
WHERE description LIKE 'Clean_%' OR results = 'Clean' AND biological < 0.01;

/* Which query will identify the records with a quality score of 10, visited more than once? */
select * from md_water_services.water_quality where visit_count >=2 and subjective_quality_score =10;

/*You have been given a task to correct the phone number for the employee named 'Bello Azibo'. 
The correct number is +99643864786.
 Write the SQL query to accomplish this.
 Note: Running these queries on the employee table may create issues later, so use the knowledge you have learned to avoid that.*/
update md_water_services.employee 
set phone_number = '+99643864786'
where employee_name ='Bello Azibo';

/* How many rows of data are returned for the following query? */
SELECT *
FROM md_water_services.well_pollution
WHERE description
IN ('Parasite: Cryptosporidium', 'biologically contaminated')
OR (results = 'Clean' AND biological > 0.01);
