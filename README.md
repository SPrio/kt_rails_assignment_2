# Rails Assignment

1. Initialize Rails Application with MySql database.
  ### Steps:
    1. rails new kt_assignment_2 -d mysql
    2. update the mysql password in config/database.yml
    3. run command 'rails db:migrate'
2. Setup root_path with index action of HomeController for this application.
  ### Steps:
    1. rails g controller Home index
    2. update the route.rb adding root path
3. Add a button at home page. By clicking this button one CSV file will be downloaded where CSV file will contain 50
Users record i.e. user_name, user_email, phone_number. This users list should be ordered by their names.
  ### Steps:
    1. install faker gem
    2. create model User with the fields
    3. run migrations
    4. add data from faker by updating seed file
    5. run seed file
    6. add require csv in application.rb to work with csv
    7. update the controller Home
    8. update the view home/index.html.erb
    9. update the model User
4. Add a button at home page. By clicking this button one PDF file will be downloaded where PDF file will contain 50
Employees record i.e. name, email, phone_number. This employees list should be ordered by their names.
  ### Steps:
    1. create model Employee with the fields
    2. run migrations
    3. add data from faker by updating the seed file
    4. run seed file
    5. install prawn gem to work with pdf and add require prawn in application.rb
    6. update the controller Home
    7. update the view home/index.html.erb
    8. update the model Employee
5. Add a button at home page. By clicking this button one mail will be fired where mail will contain 50 Students record
i.e. name, email, phone_number. This students list should be ordered by their names.
  ### Steps:
    1. create model Student with the fields
    2. rum migrations
    3. add data from faker by updating the seed file
    4. run seed file
    5. install letter_opener gem to work with emails
    6. update the config/development.rb
    7. rails g mailer StudentMailer
    8. update the mailer
    9. update the mailer view
    10. update the controller
    11. Then new mail will open in new tab
6. Add a form to ImagesController where we could upload an image and store them. There will be a page where we
could see all the images and by clicking on this image name we could see this image.
7. Add a controller with CRUD operation for a model where this model contains the following attributes:
    1. name, this field should not be null and should be unique.
    2. email, this field should not be null, should be unique and should be validated with email format.

Use database level validation also where required.
Above index page should contain a search form by which we could search an object with their name or email
where input value of search field is case insensitive and would be full or part of object's name or email.