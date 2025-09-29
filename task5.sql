SQL> select * from actor;

  ACTOR_ID ACTOR_NAME           A ACTOR_PHONE ACTOR_EMAILID
---------- -------------------- - ----------- ----------------------------------------
       101 Yash                 M  9090904321 yash@gmail.com
       102 Ramcharan            M  9090904322 ram@gmail.com
       103 Sanjay               M  9090904323 sanjay@gmail.com
       104 Ravishastry          M  9090904324 ravi@gmail.com
       105 Raghu                M  9090904324 raghu@gmail.com

SQL> select * from movie;

M_NAME                               M_ID RELEASE_D DIRECTOR_ID
------------------------------ ---------- --------- -----------
maharaja                             1001 14-JUN-24           1
kgf                                  1002 21-DEC-18           2
pushpa                               1003 26-JUN-23           3
bahubali                             1004 10-JUL-15           1
kgf1                                 1005 14-APR-22           2
hit                                  1006 15-JUL-22           4
kantara                              1007 15-MAY-23           5

7 rows selected.

SQL> select * from movie;

M_NAME                               M_ID RELEASE_D DIRECTOR_ID
------------------------------ ---------- --------- -----------
maharaja                             1001 14-JUN-24           1
kgf                                  1002 21-DEC-18           2
pushpa                               1003 26-JUN-23           3
bahubali                             1004 10-JUL-15           1
kgf1                                 1005 14-APR-22           2
hit                                  1006 15-JUL-22           4
kantara                              1007 15-MAY-23           5

7 rows selected.

SQL> select * from movie_cast;

      M_ID   ACTOR_ID
---------- ----------
      1001        103
      1002        101
      1005        101
      1004        104
      1006        103
      1006        104
      1003        102
      1001        105

8 rows selected.

SQL> select * from movie_genre;

      M_ID       G_ID
---------- ----------
      1001         12
      1002         11
      1005         11
      1003         13
      1004         12
      1006         14

6 rows selected.

SQL> select * from MOVIE_RATINGS;

      M_ID  M_RATINGS
---------- ----------
      1001          4
      1002        4.8
      1003        3.8
      1004        4.5
      1005        4.9
      1006        4.2

6 rows selected.

SQL> select * from director;

DIRECTOR_NAME        DIRECTOR_ID D DIRECTOR_PHNO DIRECTOR_EMAILID
-------------------- ----------- - ------------- ----------------------------------------
Rajamouli                      1 M    9898981231 raj@gmail.com
Prasant neel                   2 M    9898981232 prasant@gmail.com
Shukumar                       3 M    9898981234 kumar@gmail.com
Sailesh kolanu                 4 M    9898981235 sailesh@gmail.com
Rishab shetty                  5 M    9898981236 rishab@gmail.com

SQL> select m_name,director_name from movie inner join director
  2  on movie.director_id=director.director_id;

M_NAME                         DIRECTOR_NAME
------------------------------ --------------------
maharaja                       Rajamouli
bahubali                       Rajamouli
kgf1                           Prasant neel
kgf                            Prasant neel
pushpa                         Shukumar
hit                            Sailesh kolanu
kantara                        Rishab shetty

7 rows selected.

SQL> select m_name,director_name from movie m inner join director d
  2  on m.director_id=d.director_id;

M_NAME                         DIRECTOR_NAME
------------------------------ --------------------
maharaja                       Rajamouli
bahubali                       Rajamouli
kgf1                           Prasant neel
kgf                            Prasant neel
pushpa                         Shukumar
hit                            Sailesh kolanu
kantara                        Rishab shetty

7 rows selected.

SQL> select m_name,director_name from movie m left join director d
  2  on m.director_id=d.director_id;

M_NAME                         DIRECTOR_NAME
------------------------------ --------------------
bahubali                       Rajamouli
maharaja                       Rajamouli
kgf1                           Prasant neel
kgf                            Prasant neel
pushpa                         Shukumar
hit                            Sailesh kolanu
kantara                        Rishab shetty

7 rows selected.

SQL> select m_name,director_name from movie m right join director d
  2  on m.director_id=d.director_id;

M_NAME                         DIRECTOR_NAME
------------------------------ --------------------
maharaja                       Rajamouli
bahubali                       Rajamouli
kgf1                           Prasant neel
kgf                            Prasant neel
pushpa                         Shukumar
hit                            Sailesh kolanu
kantara                        Rishab shetty

7 rows selected.


SQL> select m_name,director_name from movie m full join director d
  2  on m.director_id=d.director_id;

M_NAME                         DIRECTOR_NAME
------------------------------ --------------------
maharaja                       Rajamouli
kgf                            Prasant neel
pushpa                         Shukumar
bahubali                       Rajamouli
kgf1                           Prasant neel
hit                            Sailesh kolanu
kantara                        Rishab shetty

7 rows selected.

