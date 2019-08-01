## Rails Assignment

1. Initialize Rails Application with MySql database.
    1. rails new kt_assignment_2 -d mysql
    2. update the mysql password in config/database.yml
    3. run command 'rails db:migrate'
2. Setup root_path with index action of HomeController for this application.
    1. rails g controller Home index
    2. update the route.rb adding root path
3. Add a button at home page. By clicking this button one CSV file will be downloaded where CSV file will contain 50
Users record i.e. user_name, user_email, phone_number. This users list should be ordered by their names.
    1. install faker gem
    2. create model User with the fields
    3. rum migrations
    4. add data from faker by updating seed file
    5. rum seed file
    6. update the controller Home
    7. update the view home/index.html.erb
    8. update the model User
4. Add a button at home page. By clicking this button one PDF file will be downloaded where PDF file will contain 50
Employees record i.e. name, email, phone_number. This employees list should be ordered by their names.
5. Add a button at home page. By clicking this button one mail will be fired where mail will contain 50 Students record
i.e. name, email, phone_number. This students list should be ordered by their names.
6. Add a form to ImagesController where we could upload an image and store them. There will be a page where we
could see all the images and by clicking on this image name we could see this image.
7. Add a controller with CRUD operation for a model where this model contains the following attributes:
i) name, this field should not be null and should be unique.
ii) email, this field should not be null, should be unique and should be validated with email format.
Use database level validation also where required.
Above index page should contain a search form by which we could search an object with their name or email
where input value of search field is case insensitive and would be full or part of object's name or email.