Q1

SELECT boat_id, customers 
FROM boat
WHERE boat_id = 56;

Q1

boat_id | customers 
---------+-----------
      56 |         3
(1 row)



Q2

SELECT staff_fname, staff_lname 
FROM staff 
Where staff_town='Liverpool';

Q2
staff_fname | staff_lname 
-------------+-------------
 Charlie     | Brown
 Emily       | Brown
 Emily       | Williams
(3 rows)

Q3

SELECT staff_id,boatyard_id,service_id,boat_id 
FROM staff,boatyard,servicing,boat;
Q3
       13 |           1 |          1 |      17
       13 |           2 |          1 |      17
       13 |           3 |          1 |      17
       13 |           4 |          1 |      17
       14 |           1 |          1 |      17
       14 |           2 |          1 |      17
       14 |           3 |          1 |      17
       14 |           4 |          1 |      17
       15 |           1 |          1 |      17
       15 |           2 |          1 |      17
       15 |           3 |          1 |      17
       15 |           4 |          1 |      17
       16 |           1 |          1 |      17
       16 |           2 |          1 |      17
       16 |           3 |          1 |      17
       16 |           4 |          1 |      17
       17 |           1 |          1 |      17
       17 |           2 |          1 |      17
       17 |           3 |          1 |      17
       17 |           4 |          1 |      17
       18 |           1 |          1 |      17
       18 |           2 |          1 |      17
       18 |           3 |          1 |      17
       18 |           4 |          1 |      17
       19 |           1 |          1 |      17
       19 |           2 |          1 |      17
       19 |           3 |          1 |      17
       19 |           4 |          1 |      17
:

Q4

SELECT staff_fname,staff_lname,staff_email
 FROM staff 
 ORDER BY staff_email,staff_lname,staff_fname;

Q4

  John        | Doe         | john.doe@solentboats.com
 John        | Smith       | john.r.smith@solentboats.com
 John        | Smith       | john.smith@solentboats.com
 Karen       | Harris      | karen.harris@solentboats.com
 Lee         | Montana     | lee.montana@solentboats.com
 Olivia      | Miller      | olivia.miller@solentboats.com
 Olivia      | Wilson      | olivia.wilson@solentboats.com
 Richard     | White       | richard.white@solentboats.com
 Sarah       | Wilson      | sarah.wilson@solentboats.com
 Sophia      | Taylor      | sophia.taylor@solentboats.com
 Sophie      | Doe         | sophie.doe@solentboats.com
 William     | Brown       | william.brown@solentboats.com
 William     | Jackson     | william.jackson@solentboats.com
 William     | Moore       | william.moore@solentboats.com
 Zeshan      | Snow        | zeshan.snow@solentboats.com
 Zubair      | Sumra       | zubair.sumra@solentboats.com
(40 rows)



Q5

SELECT staff_id,role_id 
FROM staff,role;

Q5

        15 |       6
       16 |       6
       17 |       6
       18 |       6
       19 |       6
       20 |       6
       21 |       6
       22 |       6
       23 |       6
       24 |       6
       25 |       6
       26 |       6
       27 |       6
       28 |       6
       29 |       6
       30 |       6
       31 |       6
       32 |       6
       33 |       6
       34 |       6
       35 |       6
       36 |       6
       37 |       6
       38 |       6
       39 |       6
       40 |       6
(240 rows)
