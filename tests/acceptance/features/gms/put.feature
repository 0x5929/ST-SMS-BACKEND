Feature: Grading management fully EDIT access

    Superuser can fully update every resource for all programs
    Instructor user can fully update every resource of the programs they are assigned to

    Scenario: requesting to auth login
        Given no initial logon
        When request GET to /auth/login/
        Then server will respond with 405

    Scenario: superuser requesting to fully update a cnaRotations resource
        Given logged on as superuser
        When request PUT to /api/gms/cnaRotations
        Then database will fully update the cna rotation record

    Scenario: superuser requesting to fully update a cnaStudents resource
        Given logged on as superuser
        When request PUT to /api/gms/cnaStudents
        Then database will fully update the cna student record

    Scenario: superuser requesting to fully update a cnaTheoryRecords resource
        Given logged on as superuser
        When request PUT to /api/gms/cnaTheoryRecords
        Then database will fully update the cna theory record

    Scenario: superuser requesting to fully update a cnaClinicalRecords resource
        Given logged on as superuser
        When request PUT to /api/gms/cnaClinicalRecords
        Then database will fully update the cna clinical record

    Scenario: superuser requesting to fully update a hhaRotations resource
        Given logged on as superuser
        When request PUT to /api/gms/hhaRotations
        Then database will fully update the hha rotation record

    Scenario: superuser requesting to fully update a hhaStudents resource
        Given logged on as superuser
        When request PUT to /api/gms/hhaStudents
        Then database will fully update the hha student record

    Scenario: superuser requesting to fully update a hhaTheoryRecords resource
        Given logged on as superuser
        When request PUT to /api/gms/hhaTheoryRecords
        Then database will fully update the hha theory record

    Scenario: superuser requesting to fully update a hhaClinicalRecords resource
        Given logged on as superuser
        When request PUT to /api/gms/hhaClinicalRecords
        Then database will fully update the hha clinical record





    Scenario: admin instructor user requesting to fully update a cnaRotations resource
        Given logged on as admin instructor user
        When request PUT to /api/gms/cnaRotations
        Then database will fully update the cna rotation record

    Scenario: admin instructor user requesting to fully update a cnaStudents resource
        Given logged on as admin instructor user
        When request PUT to /api/gms/cnaStudents
        Then database will fully update the cna student record

    Scenario: admin instructor user requesting to fully update a cnaTheoryRecords resource
        Given logged on as admin instructor user
        When request PUT to /api/gms/cnaTheoryRecords
        Then database will fully update the cna theory record

    Scenario: admin instructor user requesting to fully update a cnaClinicalRecords resource
        Given logged on as admin instructor user
        When request PUT to /api/gms/cnaClinicalRecords
        Then database will fully update the cna clinical record

    Scenario: admin instructor user requesting to fully update a hhaRotations resource
        Given logged on as admin instructor user
        When request PUT to /api/gms/hhaRotations
        Then database will fully update the hha rotation record

    Scenario: admin instructor user requesting to fully update a hhaStudents resource
        Given logged on as admin instructor user
        When request PUT to /api/gms/hhaStudents
        Then database will fully update the hha student record

    Scenario: admin instructor user requesting to fully update a hhaTheoryRecords resource
        Given logged on as admin instructor user
        When request PUT to /api/gms/hhaTheoryRecords
        Then database will fully update the hha theory record

    Scenario: admin instructor user requesting to fully update a hhaClinicalRecords resource
        Given logged on as admin instructor user
        When request PUT to /api/gms/hhaClinicalRecords
        Then database will fully update the hha clinical record






    Scenario: staff cna instructor user requesting to fully update a cnaRotations resource
        Given logged on as staff cna instructor user
        When request PUT to /api/gms/cnaRotations
        Then database will fully update the cna rotation record

    Scenario: staff cna instructor user requesting to fully update a cnaStudents resource
        Given logged on as staff cna instructor user
        When request PUT to /api/gms/cnaStudents
        Then database will fully update the cna student record

    Scenario: staff cna instructor user requesting to fully update a cnaTheoryRecords resource
        Given logged on as staff cna instructor user
        When request PUT to /api/gms/cnaTheoryRecords
        Then database will fully update the cna theory record

    Scenario: staff cna instructor user requesting to fully update a cnaClinicalRecords resource
        Given logged on as staff cna instructor user
        When request PUT to /api/gms/cnaClinicalRecords
        Then database will fully update the cna clinical record

    Scenario: staff hha instructor user requesting to fully update a hhaRotations resource
        Given logged on as staff hha instructor user
        When request PUT to /api/gms/hhaRotations
        Then database will fully update the hha rotation record

    Scenario: staff hha instructor user requesting to fully update a hhaStudents resource
        Given logged on as staff hha instructor user
        When request PUT to /api/gms/hhaStudents
        Then database will fully update the hha student record

    Scenario: staff hha instructor user requesting to fully update a hhaTheoryRecords resource
        Given logged on as staff hha instructor user
        When request PUT to /api/gms/hhaTheoryRecords
        Then database will fully update the hha theory record

    Scenario: staff hha instructor user requesting to fully update a hhaClinicalRecords resource
        Given logged on as staff hha instructor user
        When request PUT to /api/gms/hhaClinicalRecords
        Then database will fully update the hha clinical record




    Scenario: staff hha instructor user requesting to fully update cnaRotations resource
        Given logged on as staff hha instructor user
        When request PUT to /api/gms/cnaRotations
        Then will be permission denied

    Scenario: staff hha instructor user requesting to fully update cnaStudents resource
        Given logged on as staff hha instructor user
        When request PUT to /api/gms/cnaStudents
        Then will be permission denied

    Scenario: staff hha instructor user requesting to fully update cnaTheoryRecords resource
        Given logged on as staff hha instructor user
        When request PUT to /api/gms/cnaTheoryRecords
        Then will be permission denied

    Scenario: staff hha instructor user requesting to fully update cnaClinicalRecord resource
        Given logged on as staff hha instructor user
        When request PUT to /api/gms/cnaClinicalRecords
        Then will be permission denied

    Scenario: staff cna instructor user requesting to fully update hhaRotations resource
        Given logged on as staff cna instructor user
        When request PUT to /api/gms/hhaRotations
        Then will be permission denied

    Scenario: staff cna instructor user requesting to fully update hhaStudents resource
        Given logged on as staff cna instructor user
        When request PUT to /api/gms/hhaStudents
        Then will be permission denied

    Scenario: staff cna instructor user requesting to fully update hhaTheoryRecords resource
        Given logged on as staff cna instructor user
        When request PUT to /api/gms/hhaTheoryRecords
        Then will be permission denied

    Scenario: staff cna instructor user requesting to fully update hhaClinicalRecord resource
        Given logged on as staff cna instructor user
        When request PUT to /api/gms/hhaClinicalRecords
        Then will be permission denied






    Scenario: cna instructor user requesting to fully update cnaRotations resource
        Given logged on as cna instructor user
        When request PUT to /api/gms/cnaRotations
        Then database will fully update the cna rotation record

    Scenario: cna instructor user requesting to fully update cnaStudents resource
        Given logged on as cna instructor user
        When request PUT to /api/gms/cnaStudents
        Then database will fully update the cna student record

    Scenario: cna instructor user requesting to fully update cnaTheoryRecords resource
        Given logged on as cna instructor user
        When request PUT to /api/gms/cnaTheoryRecords
        Then database will fully update the cna theory record

    Scenario: cna instructor user requesting to fully update cnaClinicalRecord resource
        Given logged on as cna instructor user
        When request PUT to /api/gms/cnaClinicalRecords
        Then database will fully update the cna clinical record

    Scenario: hha instructor user requesting to fully update hhaRotations resource
        Given logged on as hha instructor user
        When request PUT to /api/gms/hhaRotations
        Then database will fully update the hha rotation record

    Scenario: hha instructor user requesting to fully update hhaStudents resource
        Given logged on as hha instructor user
        When request PUT to /api/gms/hhaStudents
        Then database will fully update the hha student record

    Scenario: hha instructor user requesting to fully update hhaTheoryRecords resource
        Given logged on as hha instructor user
        When request PUT to /api/gms/hhaTheoryRecords
        Then database will fully update the hha theory record

    Scenario: hha instructor user requesting to fully update hhaClinicalRecord resource
        Given logged on as hha instructor user
        When request PUT to /api/gms/hhaClinicalRecords
        Then database will fully update the hha clinical record







    Scenario: hha instructor user requesting to fully update cnaRotations resource
        Given logged on as hha instructor user
        When request PUT to /api/gms/cnaRotations
        Then will be permission denied

    Scenario: hha instructor user requesting to fully update cnaStudents resource
        Given logged on as hha instructor user
        When request PUT to /api/gms/cnaStudents
        Then will be permission denied

    Scenario: hha instructor user requesting to fully update cnaTheoryRecords resource
        Given logged on as hha instructor user
        When request PUT to /api/gms/cnaTheoryRecords
        Then will be permission denied

    Scenario: hha instructor user requesting to fully update cnaClinicalRecord resource
        Given logged on as hha instructor user
        When request PUT to /api/gms/cnaClinicalRecords
        Then will be permission denied

    Scenario: cna instructor user requesting to fully update hhaRotations resource
        Given logged on as cna instructor user
        When request PUT to /api/gms/hhaRotations
        Then will be permission denied

    Scenario: cna instructor user requesting to fully update hhaStudents resource
        Given logged on as cna instructor user
        When request PUT to /api/gms/hhaStudents
        Then will be permission denied

    Scenario: cna instructor user requesting to fully update hhaTheoryRecords resource
        Given logged on as cna instructor user
        When request PUT to /api/gms/hhaTheoryRecords
        Then will be permission denied

    Scenario: cna instructor user requesting to fully update hhaClinicalRecord resource
        Given logged on as cna instructor user
        When request PUT to /api/gms/hhaClinicalRecords
        Then will be permission denied