# Let's Have Fun Together App 🎉
"Let's Have Fun Together" is created using Ruby on Rails for the front and back ends. Users can save events that they want to attend and see which events their friends are attending. Users can also view events based on date, category or location. This project was created at Flatiron School with Hui Wang (@mypwhas9letters).

More information about the app can be found [here](https://medium.com/@mthorry/how-to-dynamically-add-and-remove-items-with-rails-1a4210225b2).

## Backend
Ruby on Rails was used to create the backend of the project. Event information came from the Eventful API. We seeded the database with real events from three different cities and with 50 fake users (using the FakerGem) in order to illustrate the social aspects of the app.

We have 8 models on our backend: `Category`, `Event`, `User`, `Location`, `TheDate`, `CategoryEvent`, `Friendship`, and `UserEvent`. 

### Associations
A `User`has many `user_events` (`user` and `event` join table), `friendships` (`user` and `friend` join table), and the `user` belongs to a `location`.

An `Event` belongs to a `location` and `the_date`. It has many `category_events` (`category` and `event` join table) and `user_events` (`user` and `event` join table).

A `Category` has many `events` through `category_events`.

`TheDate` has many `events` while `Location` has many `users` and `events`.

Lastly, `Friendship` belongs to a `user` and belongs to a `friend` as class `User`.

#### Controllers
Our app has 9 controllers: `categories`, `events`, `users`, `locations`, `the_dates`, `friendships`, `sessions`, and `welcome`.

`categories`, `events`, `users`, `locations`, `the_dates` and `friendships` are responsible for the CRUD actions of their respective models. `sessions` and `welcome` are responsible for login/logout and main landing pages.

## Frontend
Ruby on Rails was used to create the frontend of the project as well. The frontend has 17 different view files for `categories`, `events`, `layouts`, `locations`, `sessions`, `the_dates`, `users` and `welcome`. Most required at least an index page, a show page, and an edit page. View pages were written using Embedded Ruby (.erb), HTML and Bootstrap UI.

A **User** show page will show the events they are attending, their friends, their followers and option to add/remove as friend. A **Location**, **TheDate** or **Category** show page will show all events for that city, date or category. Events Today finds events that have the same date as today. 

An **Event** show page will show all users attending event, a map with the location, date, time, venue, categories and the option to add or remove the event (depending on the user).

**Search** looks through all events for results matching the user input. Search checks all event titles for matches.

## Acknowledgements
We would like to thank our classmates at Flatiron School for always being supportive and helpful through the process of creating this app. Also thank you to our instructors at Flatiron School Alex Griffith, Lindsey Wells and Meryl Dakin.
