# README

1. Summary
2. Installation
3. User Stories
4. Project Timeline
5. Wire-Frames
6. Entity Relationship Diagram
7. Tools
* Versions


1. Summary

  Washing clothes can be quiet difficult sometimes, especially when you're travelling, have a broken washing machine, don’t even have one, or simply, just too busy… This is a problem I personally, and many others have faced,  this is what provoked the creation of Wash-Me:

  A two-sided marketplace consisting of washers(users who will wash clothes), and wash-me's(users that need a washer).  Wash-me connects both the washers, and wash-me's - washers can advertise that their willing to wash clothes at a rate of their choice, and wash-me's can easily connect, and find those washers.

  Here's a brief on how it works. Wash-me's can enter a location of their choice, for example, it may be where they live, or somewhere they're travelling in the near future. The application will generate an interactive map which shows all the nearby Washers. These Washers are rated, can advertise extras, pickup, deliver, wash at your house, and more… It is all up to the Wash-me's/Washers. Nonetheless at the end of each day, whoever wants their clothes washed, will have them washed.

2. Installation
  Configuration - install dotenv gem, then create a .env file, add it you .gitignore with your own Stripe, and Google Maps API keys, and any other sensitive data.

  Clone the repo then change into the directory.
  Run bundle install in terminal.
  Run rails db:create db:migrate in terminal.
  Create a .env file in the root of the directory, then add your own ENV variables :
  STRIPE_PUBLISHABLE_KEY=XXXX
  STRIPE_SECRET_KEY=XXXX
  POSTGRES_PASSWORD=XXXX
  GMAIL_USERNAME=XXXX
  GMAIL_PASSWORD=XXXX

3. User Stories
![alt text](https://github.com/fraserisland/wash-me-app/blob/master/app/wireframes/trello.png)

4. Wire-Frames

![alt text](https://github.com/fraserisland/wash-me-app/blob/master/app/wireframes/Home.png)
![alt text](https://github.com/fraserisland/wash-me-app/blob/master/app/wireframes/Near-you.png)
![alt text](https://github.com/fraserisland/wash-me-app/blob/master/app/wireframes/New-message.png)
![alt text](https://github.com/fraserisland/wash-me-app/blob/master/app/wireframes/Paying.png)
![alt text](https://github.com/fraserisland/wash-me-app/blob/master/app/wireframes/Profile.png)

5. Project Timeline
![alt text](https://github.com/fraserisland/wash-me-app/blob/master/app/wireframes/Gant-chart.erd.png)

6. ERD
![alt text](https://github.com/fraserisland/wash-me-app/blob/master/app/wireframes/erd.png)

7. List of Tools Used
* Github - Version control
* Draw.io - ERD
* Postgresql - Database
* Trello- User Stories
* Cloudinary - Cloud Storage
* Heroku - Webhosting
* Gmail - Sending emails
* Stripe - Secure Payments
* Balsamiq - Wireframing
* Google Maps API


8. Ruby version
  Ruby 2.3.4
  Rails 5.2.0
