Feature: Student Management filter

    All users can filter student model objects based on student attributes via GET parameters
    
    Scenario: superuser requesting to filter sms/students resource by school
        Given logged on as superuser
        When request GET to /api/sms/students with filters by school name
        Then the specific students data will be returned as JSON response


    Scenario: superuser requesting to filter sms/students resource by program
        Given logged on as superuser
        When request GET to /api/sms/students with filters by program name
        Then the specific students data will be returned as JSON response


    Scenario: superuser requesting to filter sms/students resource by rotation
        Given logged on as superuser
        When request GET to /api/sms/students with filters by rotation number
        Then the specific students data will be returned as JSON response


    Scenario: superuser requesting to filter sms/students resource by student first name
        Given logged on as superuser
        When request GET to /api/sms/students with filters by student first name
        Then the specific students data will be returned as JSON response


    Scenario: superuser requesting to filter sms/students resource by student last name
        Given logged on as superuser
        When request GET to /api/sms/students with filters by student last name
        Then the specific students data will be returned as JSON response


    Scenario: superuser requesting to filter sms/students resource by student email
        Given logged on as superuser
        When request GET to /api/sms/students with filters by student email
        Then the specific students data will be returned as JSON response

    Scenario: superuser requesting to filter sms/students resource by student phone
        Given logged on as superuser
        When request GET to /api/sms/students with filters by student phone number
        Then the specific students data will be returned as JSON response


    Scenario: superuser requesting to filter sms/students resource by student ID
        Given logged on as superuser
        When request GET to /api/sms/students with filters by student ID
        Then the specific students data will be returned as JSON response


    Scenario: superuser requesting to filter sms/students resource by student program start date
        Given logged on as superuser
        When request GET to /api/sms/students with filters by student program start date
        Then the specific students data will be returned as JSON response


    Scenario: superuser requesting to filter sms/students resource by student program end date
        Given logged on as superuser
        When request GET to /api/sms/students with filters by student program end date
        Then the specific students data will be returned as JSON response


    Scenario: superuser requesting to filter sms/students resource by student payment completions
        Given logged on as superuser
        When request GET to /api/sms/students with filters by student payment completions
        Then the specific students data will be returned as JSON response



    Scenario: superuser requesting to filter sms/students resource by student program completions
        Given logged on as superuser
        When request GET to /api/sms/students with filters by student program completions
        Then the specific students data will be returned as JSON response



    Scenario: superuser requesting to filter sms/students resource by student employment status
        Given logged on as superuser
        When request GET to /api/sms/students with filters by student employment status
        Then the specific students data will be returned as JSON response

  Scenario: admin office user requesting to filter sms/students resource by school
        Given logged on as admin office user
        When request GET to /api/sms/students with filters by school name
        Then the specific students data will be returned as JSON response


    Scenario: admin office user requesting to filter sms/students resource by program
        Given logged on as admin office user
        When request GET to /api/sms/students with filters by program name
        Then the specific students data will be returned as JSON response


    Scenario: admin office user requesting to filter sms/students resource by rotation
        Given logged on as admin office user
        When request GET to /api/sms/students with filters by rotation number
        Then the specific students data will be returned as JSON response


    Scenario: admin office user requesting to filter sms/students resource by student first name
        Given logged on as admin office user
        When request GET to /api/sms/students with filters by student first name
        Then the specific students data will be returned as JSON response


    Scenario: admin office user requesting to filter sms/students resource by student last name
        Given logged on as admin office user
        When request GET to /api/sms/students with filters by student last name
        Then the specific students data will be returned as JSON response


    Scenario: admin office user requesting to filter sms/students resource by student email
        Given logged on as admin office user
        When request GET to /api/sms/students with filters by student email
        Then the specific students data will be returned as JSON response


    Scenario: admin office user requesting to filter sms/students resource by student phone
        Given logged on as admin office user
        When request GET to /api/sms/students with filters by student phone number
        Then the specific students data will be returned as JSON response


    Scenario: admin office user requesting to filter sms/students resource by student ID
        Given logged on as admin office user
        When request GET to /api/sms/students with filters by student ID
        Then the specific students data will be returned as JSON response


    Scenario: admin office user requesting to filter sms/students resource by student program start date
        Given logged on as admin office user
        When request GET to /api/sms/students with filters by student program start date
        Then the specific students data will be returned as JSON response


    Scenario: admin office user requesting to filter sms/students resource by student program end date
        Given logged on as admin office user
        When request GET to /api/sms/students with filters by student program end date
        Then the specific students data will be returned as JSON response


    Scenario: admin office user requesting to filter sms/students resource by student payment completions
        Given logged on as admin office user
        When request GET to /api/sms/students with filters by student payment completions
        Then the specific students data will be returned as JSON response


    Scenario: admin office user requesting to filter sms/students resource by student program completions
        Given logged on as admin office user
        When request GET to /api/sms/students with filters by student program completions
        Then the specific students data will be returned as JSON response

    Scenario: admin office user requesting to filter sms/students resource by student employment status
        Given logged on as admin office user
        When request GET to /api/sms/students with filters by student employment status
        Then the specific students data will be returned as JSON response

    Scenario: staff office user requesting to filter sms/students resource by school
        Given logged on as staff office user
        When request GET to /api/sms/students with filters by school name
        Then the specific students data will be returned as JSON response


    Scenario: staff office user requesting to filter sms/students resource by program
        Given logged on as staff office user
        When request GET to /api/sms/students with filters by program name
        Then the specific students data will be returned as JSON response


    Scenario: staff office user requesting to filter sms/students resource by rotation
        Given logged on as staff office user
        When request GET to /api/sms/students with filters by rotation number
        Then the specific students data will be returned as JSON response


    Scenario: staff office user requesting to filter sms/students resource by student first name
        Given logged on as staff office user
        When request GET to /api/sms/students with filters by student first name
        Then the specific students data will be returned as JSON response


    Scenario: staff office user requesting to filter sms/students resource by student last name
        Given logged on as staff office user
        When request GET to /api/sms/students with filters by student last name
        Then the specific students data will be returned as JSON response


    Scenario: staff office user requesting to filter sms/students resource by student email
        Given logged on as staff office user
        When request GET to /api/sms/students with filters by student email
        Then the specific students data will be returned as JSON response


    Scenario: staff office user requesting to filter sms/students resource by student phone
        Given logged on as staff office user
        When request GET to /api/sms/students with filters by student phone number
        Then the specific students data will be returned as JSON response


    Scenario: staff office user requesting to filter sms/students resource by student ID
        Given logged on as staff office user
        When request GET to /api/sms/students with filters by student ID
        Then the specific students data will be returned as JSON response


    Scenario: staff office user requesting to filter sms/students resource by student program start date
        Given logged on as staff office user
        When request GET to /api/sms/students with filters by student program start date
        Then the specific students data will be returned as JSON response


    Scenario: staff office user requesting to filter sms/students resource by student program end date
        Given logged on as staff office user
        When request GET to /api/sms/students with filters by student program end date
        Then the specific students data will be returned as JSON response


    Scenario: staff office user requesting to filter sms/students resource by student payment completions
        Given logged on as staff office user
        When request GET to /api/sms/students with filters by student payment completions
        Then the specific students data will be returned as JSON response



    Scenario: staff office user requesting to filter sms/students resource by student program completions
        Given logged on as staff office user
        When request GET to /api/sms/students with filters by student program completions
        Then the specific students data will be returned as JSON response



    Scenario: staff office user requesting to filter sms/students resource by student employment status
        Given logged on as staff office user
        When request GET to /api/sms/students with filters by student employment status
        Then the specific students data will be returned as JSON response
    
        Scenario: regular office user requesting to filter sms/students resource by school
        Given logged on as regular office user
        When request GET to /api/sms/students with filters by school name
        Then the specific students data will be returned as JSON response


    Scenario: regular office user requesting to filter sms/students resource by program
        Given logged on as regular office user
        When request GET to /api/sms/students with filters by program name
        Then the specific students data will be returned as JSON response


    Scenario: regular office user requesting to filter sms/students resource by rotation
        Given logged on as regular office user
        When request GET to /api/sms/students with filters by rotation number
        Then the specific students data will be returned as JSON response


    Scenario: regular office user requesting to filter sms/students resource by student first name
        Given logged on as regular office user
        When request GET to /api/sms/students with filters by student first name
        Then the specific students data will be returned as JSON response


    Scenario: regular office user requesting to filter sms/students resource by student last name
        Given logged on as regular office user
        When request GET to /api/sms/students with filters by student last name
        Then the specific students data will be returned as JSON response


    Scenario: regular office user requesting to filter sms/students resource by student email
        Given logged on as regular office user
        When request GET to /api/sms/students with filters by student email
        Then the specific students data will be returned as JSON response


    Scenario: regular office user requesting to filter sms/students resource by student phone
        Given logged on as regular office user
        When request GET to /api/sms/students with filters by student phone number
        Then the specific students data will be returned as JSON response


    Scenario: regular office user requesting to filter sms/students resource by student ID
        Given logged on as regular office user
        When request GET to /api/sms/students with filters by student ID
        Then the specific students data will be returned as JSON response


    Scenario: regular office user requesting to filter sms/students resource by student program start date
        Given logged on as regular office user
        When request GET to /api/sms/students with filters by student program start date
        Then the specific students data will be returned as JSON response


    Scenario: regular office user requesting to filter sms/students resource by student program end date
        Given logged on as regular office user
        When request GET to /api/sms/students with filters by student program end date
        Then the specific students data will be returned as JSON response


    Scenario: regular office user requesting to filter sms/students resource by student payment completions
        Given logged on as regular office user
        When request GET to /api/sms/students with filters by student payment completions
        Then the specific students data will be returned as JSON response



    Scenario: regular office user requesting to filter sms/students resource by student program completions
        Given logged on as regular office user
        When request GET to /api/sms/students with filters by student program completions
        Then the specific students data will be returned as JSON response



    Scenario: regular office user requesting to filter sms/students resource by student employment status
        Given logged on as regular office user
        When request GET to /api/sms/students with filters by student employment status
        Then the specific students data will be returned as JSON response