# PHASE-4 CODE-CHALLENGE SUPERHEROES

An API for superheroes, to store their names, their hero names and their powers as well.

## BDD
1. The user should be able to get a list of all heroes. 
2. Get a specific heroe using their id
3. If the heroe is not found it returns an error of "Hero not found"
4. Get a list of all the powers in the database.
5. Get a specific power uing the powers id.
6. If the power is not found then it returns an error of "Power not found"
7. Update a powers description currently in the database using PATCH
- if the update is successful return the power in the JSON format
- if not return an error of validations error
8. Create a new HeroPower that is associated with an existing hero and power through the POST method and /heropowers route.
- if unsuccessful return the validations errors.

## PSEUDOCODE
# Tables:
1. heros with the columns name and super_name as strings
2. heropowers with the columns strength as a string and power_id and hero_id as integers
3. powers with the columns name and description as strings

# Models:
1. Hero model with:
- a has_many relationship to heropowers
- a has_many through relationship to powers

2. Power model with:
- a has_many relationship to heropowers
- a has_many through relationship to heros
- a description validation that ensures that it is present and it is atleast 20 characters long 


3. Heropower model with:
- a belongs_to relationship with powers
- a belongs_to relationship  with heros
- a strength validation that ensures it is either "Weak","Strong" or "Average"

# Routes: 
In routes.rb:
rescources :powers, only:[:index,:show,:update]
rescources :heros, only :[:index,:show]
resources :heropowers, only:[:create]

### Controllers
1. PowersController:
   - has index method that returns all the powers
   - has show method that returns a specific power or returns appropriate error
   - has update method that returns a specific power or returns appropriate error

2. HerosController
   - has index method that returns all the powers
   - has show method that returns a specific power or returns appropriate error

3. HeropowersController
    - has create method that creates a new heropower or returns appropriate error

# Pre-requesites
1. Ruby 
2. Ruby on Rails
3. Bundler 
# Running the application
1. Fork and clone this repository into your local machine
2. Open the terminal and cd into the directory where the forked application is located
3. Run the **bundle install** command to install all of the required gems
4. Run the **rails server** command to start the application
5. Follow the link generated by the response to used the application

## Status
Development for this application has been completed 

## Author and License
- Author: [Michelle-Mungai] https://github.com/Michelle-Mungai
- License: This application is covered under the MIT license.