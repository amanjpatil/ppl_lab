teaches_subject(t1,ode-mvc).
teaches_subject(t2,dsgt).
teaches_subject(t3,ppl).
teaches_subject(t4,dld).
teaches_subject(t5,chemistry).

has_subject(maths_dpt,ode-mvc).
has_subject(comp_dpt,dsgt).
has_subject(comp_dpt,ppl).
has_subject(comp_dpt,CN).
has_subject(app_sc,chemistry).

has_student(comp_dpt,s1).
has_student(comp_dpt,s2).
has_student(maths_dpt,s1).
has_student(app_sc,s3).


has_faculty(DEPT , FACULTY) :- teaches_subject(FACULTY , SUB) , has_subject(DEPT , SUB).

studies_subject(STUDENT , SUB) :- has_student(DEPT , STUDENT) , has_subject(DEPT , SUB) .

teaches_student(FACULTY , STUDENT) :- teaches_subject(FACULTY , SUB) , has_subject(DEPT , SUB) , has_student(DEPT, STUDENT).
