# Rails Project - Nail the Trail

## Description of this app:

Nail the Trail is a Rails MVC Content Management System app. I designed this website to allow users to find the right hiking trail for their next adventure, see intel and user reviews for trails to enable success on-trail, help others by leaving reviews for hikes, and more. We simply enable all hikers to nail the trail!

Nail the Trail gives users the ability to:

-Login (via Omniauth Facebook login or normal login), create an account, and logout

-Select to view hikes in 12 of our cities, or select no specific city to see all hikes on our site across all our cities.

-See all of our hikes' name, location, average star rating which continually updates based on reviews, difficulty level, and description.

-See each hike's reviews in which each review has a reviewer name, star rating, title, description, and date.

-Create a new review for a hike.

-Edit a review you've created.

-Delete a review you've created.

-See your profile page which has some of your basic user info and which also displays all the reviews you've left if you've left any.

-See who the user on the site who has created the most reviews for hikes is.

## How to install this program:

-Fork and clone the repository at this link: https://github.com/kkirby16/Nail-The-Trail

-Once in the program, open the terminal and run bundle install.

-Next, run rake db:migrate and rake db:seed.

## How to use this program:

-Run rails s in the terminal.

-Then navigate to http://localhost:3000/ and as a new user you can click either login or create account. If login is clicked, any user with Facebook can click to login with Facebook. This will create a Nail the Trail account for you if you don't already have one and will then log you in. In the case that you already have a Nail the Trail account, clicking to login with Facebook will simply be an easy way to continually keep logging in to your Nail the Trail account.

-If you click the create account button in the navigation bar at the top of the home page you can create an account normally without Facebook if you fill out all fields that aren't marked optional. Instructions for using the website are detailed in the section right below.

Once you have either logged in our created an account you are directed to the user homepage, which allows you to find hikes via city by selecting a city or to see all of our hikes by not selecting a city. Towards the bottom of the page you can click the "See our user with the most created reviews!" link to be taken to a page that publicly congratulates our website's user with the most created reviews.

Once you've selected a city to find hikes for, or kept the select option on "Select", you will be directed to see a list of hikes. You will see each hike's name, location, average star rating, difficulty level, and description.

Under each hike you will see a button to see all of that hike's reviews and a button to create a new review for that hike. If you click to see the hike's reviews, you will be directed to a page that shows all the reviews for that hike in which each review has a reviewer name, star rating, title, description, and date. If you click to create a new review for the hike, you will be taken to a page with a form for creating a new review for that hike (all form fields are required and the star rating needs to be an integer from 1-5).

Once you've created a review, you'll be directed to the reviews page for that specific hike and at the bottom you will see your added review with options to edit or delete it.

If you click to edit your review, you'll be brought to a page with a form to edit your review. You can change any of the details of your review and then when you press update you'll be directed back to the list of reviews for the hike you reviewed and you'll see that your review has been updated.

If you click to delete your review, the review will be deleted and you'll be directed back to the list of reviews for the hike you reviewed and you'll see that your review has been deleted.

Average star ratings of hikes will correctly change accordingly depending on reviews a user creates, updates to ones reviews, or deletions of ones reviews.

A user can also see their profile from the link in the top right corner of the navigation bar. This will show them some of their basic user info as well as reviews they have created if applicable.

If a user ever wants to navigate back to the user homepage, they can click the home button in the top left corner of the navigation bar.

When a user is done using our website they can click the logout button in the top right corner of the navigation bar to logout.

### Video of how to use my app: https://www.youtube.com/watch?v=2kKjG923AMg

#### This project is licensed under: https://www.gnu.org/licenses/gpl-3.0.en.html
