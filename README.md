# README OLIVER COOK



Ruby version
We used Ruby version  2.4.1


Database creation
rails generate model Artist name:text image:text
rails db:migrate

The Database was installed on the command line using:




Database initialization : Workflow

I created the Database on the command line using :

rails new my_new_app_name --skip-git -T
created the database using rails db:create
rails generate migration  after creating Database
ran db:seed   to load seed data.




How to run the test suit: this was run using the local rails server/

Deployment instructions

The site was deployed using Heroku.
The Project is located at :
https://protonproj.herokuapp.com/


Project Workflow: Did you complete the wireframes, task tracking, and/or ERDs, as specified above? Did you use source control as detailed above?

The Basic MVP set out in the initial presentation was fulfilled. this consisted of 3 models:

User : Create a New Account , Login  to an existing account.
- A User "has many.."

Projects: A user has many Many projects. The logged in User can create new Projects these are created they appear in List form.


Revisions:  "Projects have many Revisions"... The Revisions are created when the user adds a note, which explains what the latest revisions are. Notes can be as simple or as detailed as the user likes.

Technical Requirements: Did you deliver a project that met all the technical requirements? Given what the class has covered so far, did you build something that was reasonably complex?

Yes. The Basic framework  of being able to add a new user, logging is a user, create new projects, and add revisions to any of those projects is the basic and most important functionality of the app, therefore , all the technical requirements were met.
Some features did not make it into the app but these can be added later (see below: Missing Features to Add)

Creativity: Did you added a personal spin or creative element into your project submission? Did you deliver something of value to the end user (not just a login button and an index page)?

Creativity:

I think the App is set up to deliver a valuable basic tracking tool which fulfilled the basic features of

Allowing the user to create list of personal projects.

Allowing the user to  add revisions which will enable the user to keep track of changes made but also add notes about the project changes, this is useful.

Code Quality: Did you follow code style guidance and best practices covered in class, such as spacing, modularity, and semantic naming? Did you comment your code as your instructors as we have in class?

Code Quality was passable, but not as clean as I would like, as it contains some different attempts to fix problems. Noting that cant be cleaned up though!
I need to improve my semantic naming and indentation.

Deployment and Functionality: Is your application deployed and functional at a public URL? Is your application free of errors and incomplete functionality?

RUBY Version

Post Project Self reflection and Musings

 RAILS DOES make sense once you understand the M-V-C order of flow.

 Setting up a database is relatively easy, understanding and keeping track of the
 connections was hard but made more sense as I went along.

 Could see how the Back end  code serves the front end, I thought this was cool.

 Would  like to keep working to improve this project as its a useful one! May««b even
 convert it to a sellable app.


Missing Features to Add:

 -Ability to add date and time stamps to each revision


-Ability to Edit a revision after it has already been added.

-Delete Revisions

-Delete Projects

-Rename Projects

-Add images to projects as icon thumbnails.



 Like with Project 0, I might of relied on getting too much help from TA's to
 do the project, when I should be able to write the code myself hopefully for the rest
 of the course  can work more independently and not rely on others to fill in on my
 knowledge gaps.
