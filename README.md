# Pewlett Hackard Analysis

## Overview of the analysis:

The analysis is being carried out in order to identify which employees are retiring and what positions would have to be filled once the employee retires. In the second deleiverbale a list of employees is generated in order to identify the people who are eligible to become mentors.

## Results:

* In total 90398 employees are retiring 
* Senior Engineers form the greatest chunk of retirees (as shown in the image below)

<img width="199" alt="Screen Shot 2021-02-14 at 3 40 10 PM" src="https://user-images.githubusercontent.com/73799417/107888553-ecd15600-6eda-11eb-80c3-ce4716210ac7.png">


* There are approximatley 1549 people eligible for mentorship roles

<img width="442" alt="Screen Shot 2021-02-14 at 3 47 14 PM" src="https://user-images.githubusercontent.com/73799417/107888696-fad3a680-6edb-11eb-8b32-4a57318f1f9d.png">

## Summary:

Q) How many roles will need to be filled as the "silver tsunami" begins to make an impact?

ans) 90398 roles need to be filled. As shown in the results paragraph. The can be calculated by the following query:

SELECT COUNT(count)
FROM retiring_titles;
Q) Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

ans) There are 1549 employees present who are eligible for mentorship. This may not be enough as the mentors are not equally distributed in the departments.

SELECT COUNT(last_name)
FROM mentorship_eligibilty;
