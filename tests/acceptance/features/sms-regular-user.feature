Feature: Student Management System as Regular User
    when regular office user logs onto sms system
    will have read access to all sms endpoints
    will have POST/PUT/PATCH access to sms students endpoints
    can filter student query by student parameters
    and everything is done only to user's own school


    when super user logs onto sms system
    will have GET/POST/PUT/PATCH/DELETE access to all sms endpoints
    can filter student query by student parameters
    and since super user is not assigned with a particular school location
    he/she can manage all school's resource


    Scenario: regular office user requesting to read schools resource
        Given logged on as regular office user
        When requesting GET to /api/sms/schools
        Then will receive JSON response of data
        But only for the same school as the regular office user


    Scenario: regular office user requesting to read programs resource
        Given logged on as regular office user
        When requesting GET to /api/sms/programs
        Then will receive JSON response of data
        And server response status is OK 200
        But only for the same school as the regular office user


    Scenario: regular office user requesting to read rotations resource
        Given logged on as regular office user
        When requesting GET to /api/sms/rotations
        Then will receive JSON response of data
        And server response status is OK 200
        But only for the same school as the regular office user


    Scenario: regular office user requesting to read students resource
        Given logged on as regular office user
        When requesting GET to /api/sms/students
        Then will receive JSON response of data
        And server response status is OK 200
        But only for the same school as the regular office user


    Scenario: regular office user requesting to create a student resource of the same school program rotation
        Given logged on as regular office user
        When request POST to /api/sms/students of the same school
        Then database will create a student record
        And server response status is created 201

    Scenario: regular office user requesting to create a student resource of a program rotation from different school
        Given logged on as regular office user
        When request POST to /api/sms/students to a program rotation of another school
        Then database will not create the student record
        And server response status is Bad Request 400

    Scenario: regular office user requesting to fully edit a student resource
        Given logged on as regular office user
        When request PUT to /api/sms/students/student_uuid
        Then database will edit the student record
        And server response status is OK 200

    Scenario: regular office user requesting to partially edit a student resource
        Given logged on as regular office user
        When request PATCH to /api/sms/students/student_uuid
        Then database will edit the student record
        And server response status is OK 200

    Scenario: regular office user requesting to delete a student resource
        Given logged on as regular office user
        When request DELETE to /api/sms/students/student_uuid
        Then database will not delete the student record
        And server response status is Permission Denied 403


    Scenario: regular office user requesting to create sms/schools resource
        Given logged on as regular office User
        When request POST to /api/sms/schools
        Then database will not create the school record
        And server response status is Permission Denied 403

    Scenario: regular office user requesting to fully edit sms/schools resource
        Given logged on as regular office User
        When request PUT to /api/sms/schools/school_uuid
        Then database will not edit the school record
        And server response status is Permission Denied 403

    Scenario: regular office user requesting to partially edit sms/schools resource
        Given logged on as regular office User
        When request PATCH to /api/sms/schools/school_uuid
        Then database will not edit the school record
        And server response status is Permission Denied 403

    Scenario: regular office user requesting to delete sms/schools resource
        Given logged on as regular office User
        When request DELETE to /api/sms/schools/school_uuid
        Then database will not delete the school record
        And server response status is Permission Denied 403

    Scenario: regular office user requesting to create sms/programs resource
        Given logged on as regular office User
        When request POST to /api/sms/programs
        Then database will not create the program record
        And server response status is Permission Denied 403

    Scenario: regular office user requesting to fully edit sms/programs resource
        Given logged on as regular office User
        When request PUT to /api/sms/programs/program_uuid
        Then database will not edit the program record
        And server response status is Permission Denied 403

    Scenario: regular office user requesting to partially edit sms/programs resource
        Given logged on as regular office User
        When request PATCH to /api/sms/programs/program_uuid
        Then database will not edit the program record
        And server response status is Permission Denied 403

    Scenario: regular office user requesting to delete sms/programs resource
        Given logged on as regular office User
        When request DELETE to /api/sms/programs/program_uuid
        Then database will not delete the program record
        And server response status is Permission Denied 403

    Scenario: regular office user requesting to create sms/rotations resource
        Given logged on as regular office User
        When request POST to /api/sms/rotations
        Then database will not create the rotation record
        And server response status is Permission Denied 403

    Scenario: regular office user requesting to fully edit sms/rotations resource
        Given logged on as regular office User
        When request PUT to /api/sms/rotations/rotation_uuid
        Then database will not edit the rotation record
        And server response status is Permission Denied 403

    Scenario: regular office user requesting to partially edit sms/rotations resource
        Given logged on as regular office User
        When request PATCH to /api/sms/rotations/rotation_uuid
        Then database will not edit the rotation record
        And server response status is Permission Denied 403

    Scenario: regular office user requesting to delete sms/rotations resource
        Given logged on as regular office User
        When request DELETE to /api/sms/rotations/rotation_uuid
        Then database will not delete the rotation record
        And server response status is Permission Denied 403

    Scenario: regular office user requesting to filter sms/students resource by school
        Given logged on as regular office user
        When request GET to /api/sms/students with filters by school name
        Then the specific students data will be returned as JSON response
        And server response status is OK 200
        But only for the same school as the regular office user

    Scenario: regular office user requesting to filter sms/students resource by program
        Given logged on as regular office user
        When request GET to /api/sms/students with filters by program name
        Then the specific students data will be returned as JSON response
        And server response status is OK 200
        But only for the same school as the regular office user

    Scenario: regular office user requesting to filter sms/students resource by rotation
        Given logged on as regular office user
        When request GET to /api/sms/students with filters by rotation number
        Then the specific students data will be returned as JSON response
        And server response status is OK 200
        But only for the same school as the regular office user

    Scenario: regular office user requesting to filter sms/students resource by student first name
        Given logged on as regular office user
        When request GET to /api/sms/students with filters by student first name
        Then the specific students data will be returned as JSON response
        And server response status is OK 200
        But only for the same school as the regular office user

    Scenario: regular office user requesting to filter sms/students resource by student last name
        Given logged on as regular office user
        When request GET to /api/sms/students with filters by student last name
        Then the specific students data will be returned as JSON response
        And server response status is OK 200
        But only for the same school as the regular office user

    Scenario: regular office user requesting to filter sms/students resource by student email
        Given logged on as regular office user
        When request GET to /api/sms/students with filters by student email
        Then the specific students data will be returned as JSON response
        And server response status is OK 200
        But only for the same school as the regular office user

    Scenario: regular office user requesting to filter sms/students resource by student phone
        Given logged on as regular office user
        When request GET to /api/sms/students with filters by student phone number
        Then the specific students data will be returned as JSON response
        And server response status is OK 200
        But only for the same school as the regular office user

    Scenario: regular office user requesting to filter sms/students resource by student ID
        Given logged on as regular office user
        When request GET to /api/sms/students with filters by student ID
        Then the specific students data will be returned as JSON response
        And server response status is OK 200
        But only for the same school as the regular office user

    Scenario: regular office user requesting to filter sms/students resource by student program start date
        Given logged on as regular office user
        When request GET to /api/sms/students with filters by student program start date
        Then the specific students data will be returned as JSON response
        And server response status is OK 200
        But only for the same school as the regular office user

    Scenario: regular office user requesting to filter sms/students resource by student program end date
        Given logged on as regular office user
        When request GET to /api/sms/students with filters by student program end date
        Then the specific students data will be returned as JSON response
        And server response status is OK 200
        But only for the same school as the regular office user

    Scenario: regular office user requesting to filter sms/students resource by student payment completions
        Given logged on as regular office user
        When request GET to /api/sms/students with filters by student payment completions
        Then the specific students data will be returned as JSON response
        And server response status is OK 200
        But only for the same school as the regular office user


    Scenario: regular office user requesting to filter sms/students resource by student program completions
        Given logged on as regular office user
        When request GET to /api/sms/students with filters by student program completions
        Then the specific students data will be returned as JSON response
        And server response status is OK 200
        But only for the same school as the regular office user


    Scenario: regular office user requesting to filter sms/students resource by student employment status
        Given logged on as regular office user
        When request GET to /api/sms/students with filters by student employment status
        Then the specific students data will be returned as JSON response
        And server response status is OK 200
        But only for the same school as the regular office user


    Scenario: regular user requesting to read /api/sms/schools
        Given logged on as regular user with is_office set to false
        When request GET /api/sms/schools
        Then No data response will be sent from server
        And server response status is Permission Denied 403

    Scenario: regular user requesting to read /api/sms/programs
        Given logged on as regular user with is_office set to false
        When request GET /api/sms/programs
        Then No data response will be sent from server
        And server response status is Permission Denied 403

    Scenario: regular user requesting to read /api/sms/rotations
        Given logged on as regular user with is_office set to false
        When request GET /api/sms/rotations
        Then No data response will be sent from server
        And server response status is Permission Denied 403


    Scenario: regular user requesting to read /api/sms/students
        Given logged on as regular user with is_office set to false
        When request GET /api/sms/students
        Then No data response will be sent from server
        And server response status is Permission Denied 403


    Scenario: regular user requesting to create /api/sms/schools
        Given logged on as regular user with is_office set to false
        When request POST /api/sms/schools
        Then No data response will be sent from server
        And server response status is Permission Denied 403

    Scenario: regular user requesting to create /api/sms/programs
        Given logged on as regular user with is_office set to false
        When request POST /api/sms/programs
        Then No data response will be sent from server
        And server response status is Permission Denied 403

    Scenario: regular user requesting to create /api/sms/rotations
        Given logged on as regular user with is_office set to false
        When request POST /api/sms/rotations
        Then No data response will be sent from server
        And server response status is Permission Denied 403


    Scenario: regular user requesting to create /api/sms/students
        Given logged on as regular user with is_office set to false
        When request POST /api/sms/students
        Then No data response will be sent from server
        And server response status is Permission Denied 403

    Scenario: regular user requesting to fully update /api/sms/schools
        Given logged on as regular user with is_office set to false
        When request PUT /api/sms/schools
        Then No data response will be sent from server
        And server response status is Permission Denied 403

    Scenario: regular user requesting to fully update  /api/sms/programs
        Given logged on as regular user with is_office set to false
        When request PUT /api/sms/programs
        Then No data response will be sent from server
        And server response status is Permission Denied 403

    Scenario: regular user requesting to fully update  /api/sms/rotations
        Given logged on as regular user with is_office set to false
        When request PUT /api/sms/rotations
        Then No data response will be sent from server
        And server response status is Permission Denied 403


    Scenario: regular user requesting to fully update  /api/sms/students
        Given logged on as regular user with is_office set to false
        When request PUT /api/sms/students
        Then No data response will be sent from server
        And server response status is Permission Denied 403


    Scenario: regular user requesting to partially update /api/sms/schools
        Given logged on as regular user with is_office set to false
        When request PATCH /api/sms/schools
        Then No data response will be sent from server
        And server response status is Permission Denied 403

    Scenario: regular user requesting to partially update  /api/sms/programs
        Given logged on as regular user with is_office set to false
        When request PATCH /api/sms/programs
        Then No data response will be sent from server
        And server response status is Permission Denied 403

    Scenario: regular user requesting to partially update  /api/sms/rotations
        Given logged on as regular user with is_office set to false
        When request PATCH /api/sms/rotations
        Then No data response will be sent from server
        And server response status is Permission Denied 403


    Scenario: regular user requesting to partially update  /api/sms/students
        Given logged on as regular user with is_office set to false
        When request PATCH /api/sms/students
        Then No data response will be sent from server
        And server response status is Permission Denied 403


    Scenario: regular user requesting to delete /api/sms/schools
        Given logged on as regular user with is_office set to false
        When request DELETE /api/sms/schools
        Then No data response will be sent from server
        And server response status is Permission Denied 403

    Scenario: regular user requesting to delete /api/sms/programs
        Given logged on as regular user with is_office set to false
        When request DELETE /api/sms/programs
        Then No data response will be sent from server
        And server response status is Permission Denied 403

    Scenario: regular user requesting to delete /api/sms/rotations
        Given logged on as regular user with is_office set to false
        When request DELETE /api/sms/rotations
        Then No data response will be sent from server
        And server response status is Permission Denied 403


    Scenario: regular user requesting to delete /api/sms/students
        Given logged on as regular user with is_office set to false
        When request DELETE /api/sms/students
        Then No data response will be sent from server
        And server response status is Permission Denied 403

