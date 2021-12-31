Feature: Grading management CREATE access

    Superuser can create every resource for all programs
    Instructor user can create every resource of the programs they are assigned to

    Scenario: requesting to auth login
        Given no initial logon
        When request GET to /auth/login/
        Then server will respond with 405


    Scenario: superuser requesting to create a cnaRotations resource
        Given logged on as superuser
        When request POST to /api/gms/cnaRotations
        Then database will create the cna rotation record

    Scenario: superuser requesting to create a cnaStudents resource
        Given logged on as superuser
        When request POST to /api/gms/cnaStudents
        Then database will create the cna student record

    Scenario: superuser requesting to create a cnaTheoryRecords resource
        Given logged on as superuser
        When request POST to /api/gms/cnaTheoryRecords
        Then database will create the cna theory record

    Scenario: superuser requesting to create a cnaClinicalRecords resource
        Given logged on as superuser
        When request POST to /api/gms/cnaClinicalRecords
        Then database will create the cna clinical record

    Scenario: superuser requesting to create a hhaRotations resource
        Given logged on as superuser
        When request POST to /api/gms/hhaRotations
        Then database will create the hha rotation record

    Scenario: superuser requesting to create a hhaStudents resource
        Given logged on as superuser
        When request POST to /api/gms/hhaStudents
        Then database will create the hha student record

    Scenario: superuser requesting to create a hhaTheoryRecords resource
        Given logged on as superuser
        When request POST to /api/gms/hhaTheoryRecords
        Then database will create the hha theory record

    Scenario: superuser requesting to create a hhaClinicalRecords resource
        Given logged on as superuser
        When request POST to /api/gms/hhaClinicalRecords
        Then database will create the hha clinical record





    Scenario: admin instructor user requesting to create a cnaRotations resource
        Given logged on as admin instructor user
        When request POST to /api/gms/cnaRotations
        Then database will create the cna rotation record

    Scenario: admin instructor user requesting to create a cnaStudents resource
        Given logged on as admin instructor user
        When request POST to /api/gms/cnaStudents
        Then database will create the cna student record

    Scenario: admin instructor user requesting to create a cnaTheoryRecords resource
        Given logged on as admin instructor user
        When request POST to /api/gms/cnaTheoryRecords
        Then database will create the cna theory record

    Scenario: admin instructor user requesting to create a cnaClinicalRecords resource
        Given logged on as admin instructor user
        When request POST to /api/gms/cnaClinicalRecords
        Then database will create the cna clinical record

    Scenario: admin instructor user requesting to create a hhaRotations resource
        Given logged on as admin instructor user
        When request POST to /api/gms/hhaRotations
        Then database will create the hha rotation record

    Scenario: admin instructor user requesting to create a hhaStudents resource
        Given logged on as admin instructor user
        When request POST to /api/gms/hhaStudents
        Then database will create the hha student record

    Scenario: admin instructor user requesting to create a hhaTheoryRecords resource
        Given logged on as admin instructor user
        When request POST to /api/gms/hhaTheoryRecords
        Then database will create the hha theory record

    Scenario: admin instructor user requesting to create a hhaClinicalRecords resource
        Given logged on as admin instructor user
        When request POST to /api/gms/hhaClinicalRecords
        Then database will create the hha clinical record





    Scenario: staff cna instructor user requesting to create a cnaRotations resource
        Given logged on as staff cna instructor user
        When request POST to /api/gms/cnaRotations
        Then database will create the cna rotation record

    Scenario: staff cna instructor user requesting to create a cnaStudents resource
        Given logged on as staff cna instructor user
        When request POST to /api/gms/cnaStudents
        Then database will create the cna student record

    Scenario: staff cna instructor user requesting to create a cnaTheoryRecords resource
        Given logged on as staff cna instructor user
        When request POST to /api/gms/cnaTheoryRecords
        Then database will create the cna theory record

    Scenario: staff cna instructor user requesting to create a cnaClinicalRecords resource
        Given logged on as staff cna instructor user
        When request POST to /api/gms/cnaClinicalRecords
        Then database will create the cna clinical record

    Scenario: staff hha instructor user requesting to create a hhaRotations resource
        Given logged on as staff hha instructor user
        When request POST to /api/gms/hhaRotations
        Then database will create the hha rotation record

    Scenario: staff hha instructor user requesting to create a hhaStudents resource
        Given logged on as staff hha instructor user
        When request POST to /api/gms/hhaStudents
        Then database will create the hha student record

    Scenario: staff hha instructor user requesting to create a hhaTheoryRecords resource
        Given logged on as staff hha instructor user
        When request POST to /api/gms/hhaTheoryRecords
        Then database will create the hha theory record

    Scenario: staff hha instructor user requesting to create a hhaClinicalRecords resource
        Given logged on as staff hha instructor user
        When request POST to /api/gms/hhaClinicalRecords
        Then database will create the hha clinical record






    Scenario: staff hha instructor user requesting to create cnaRotations resource
        Given logged on as staff hha instructor user
        When request POST to /api/gms/cnaRotations
        Then database will not create the cna rotation record

    Scenario: staff hha instructor user requesting to create cnaStudents resource
        Given logged on as staff hha instructor user
        When request POST to /api/gms/cnaStudents
        Then database will not create the cna student record

    Scenario: staff hha instructor user requesting to create cnaTheoryRecords resource
        Given logged on as staff hha instructor user
        When request POST to /api/gms/cnaTheoryRecords
        Then database will not create the cna theory record

    Scenario: staff hha instructor user requesting to create cnaClinicalRecord resource
        Given logged on as staff hha instructor user
        When request POST to /api/gms/cnaClinicalRecords
        Then database will not create the cna clinical record

    Scenario: staff cna instructor user requesting to create hhaRotations resource
        Given logged on as staff cna instructor user
        When request POST to /api/gms/hhaRotations
        Then database will not create the hha rotation record

    Scenario: staff cna instructor user requesting to create hhaStudents resource
        Given logged on as staff cna instructor user
        When request POST to /api/gms/hhaStudents
        Then database will not create the hha student record

    Scenario: staff cna instructor user requesting to create hhaTheoryRecords resource
        Given logged on as staff cna instructor user
        When request POST to /api/gms/hhaTheoryRecords
        Then database will not create the hha theory record

    Scenario: staff cna instructor user requesting to create hhaClinicalRecord resource
        Given logged on as staff cna instructor user
        When request POST to /api/gms/hhaClinicalRecords
        Then database will not create the hha clinical record








    Scenario: cna instructor user requesting to create cnaRotations resource
        Given logged on as cna instructor user
        When request POST to /api/gms/cnaRotations
        Then database will create the cna rotation record

    Scenario: cna instructor user requesting to create cnaStudents resource
        Given logged on as cna instructor user
        When request POST to /api/gms/cnaStudents
        Then database will create the cna student record

    Scenario: cna instructor user requesting to create cnaTheoryRecords resource
        Given logged on as cna instructor user
        When request POST to /api/gms/cnaTheoryRecords
        Then database will create the cna theory record

    Scenario: cna instructor user requesting to create cnaClinicalRecord resource
        Given logged on as cna instructor user
        When request POST to /api/gms/cnaClinicalRecords
        Then database will create the cna clinical record

    Scenario: hha instructor user requesting to create hhaRotations resource
        Given logged on as hha instructor user
        When request POST to /api/gms/hhaRotations
        Then database will create the hha rotation record

    Scenario: hha instructor user requesting to create hhaStudents resource
        Given logged on as hha instructor user
        When request POST to /api/gms/hhaStudents
        Then database will create the hha student record

    Scenario: hha instructor user requesting to create hhaTheoryRecords resource
        Given logged on as hha instructor user
        When request POST to /api/gms/hhaTheoryRecords
        Then database will create the hha theory record

    Scenario: hha instructor user requesting to create hhaClinicalRecord resource
        Given logged on as hha instructor user
        When request POST to /api/gms/hhaClinicalRecords
        Then database will create the hha clinical record





    Scenario: hha instructor user requesting to create cnaRotations resource
        Given logged on as hha instructor user
        When request POST to /api/gms/cnaRotations
        Then database will not create the cna rotation record

    Scenario: hha instructor user requesting to create cnaStudents resource
        Given logged on as hha instructor user
        When request POST to /api/gms/cnaStudents
        Then database will not create the cna student record

    Scenario: hha instructor user requesting to create cnaTheoryRecords resource
        Given logged on as hha instructor user
        When request POST to /api/gms/cnaTheoryRecords
        Then database will not create the cna theory record

    Scenario: hha instructor user requesting to create cnaClinicalRecord resource
        Given logged on as hha instructor user
        When request POST to /api/gms/cnaClinicalRecords
        Then database will not create the cna clinical record

    Scenario: cna instructor user requesting to create hhaRotations resource
        Given logged on as cna instructor user
        When request POST to /api/gms/hhaRotations
        Then database will not create the hha rotation record

    Scenario: cna instructor user requesting to create hhaStudents resource
        Given logged on as cna instructor user
        When request POST to /api/gms/hhaStudents
        Then database will not create the hha student record

    Scenario: cna instructor user requesting to create hhaTheoryRecords resource
        Given logged on as cna instructor user
        When request POST to /api/gms/hhaTheoryRecords
        Then database will not create the hha theory record

    Scenario: cna instructor user requesting to create hhaClinicalRecord resource
        Given logged on as cna instructor user
        When request POST to /api/gms/hhaClinicalRecords
        Then database will not create the hha clinical record