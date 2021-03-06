# README

**1. Summary**

**2. Link To App**

**3. Installation**

**4. User Stories**

**5. Project Timeline**

**6. Wire-Frames**

**7. Entity Relationship Diagram**

**8. Tools**

**Versions**

* Github repo Link

* https://github.com/fraserisland/wash-me-app

**1. Summary**

  Washing clothes can be quiet difficult sometimes, especially when you're travelling, have a broken washing machine, don’t even have one, or simply, just too busy… This is a problem I personally, and many others have faced,  this is what provoked the creation of Wash-Me:

  A two-sided marketplace consisting of washers(users who will wash clothes), and wash-me's(users that need a washer).  Wash-me connects both the washers, and wash-me's - washers can advertise that their willing to wash clothes at a rate of their choice, and wash-me's can easily connect, and find those washers.

  Here's a brief on how it works. Wash-me's can enter a location of their choice, for example, it may be where they live, or somewhere they're travelling in the near future. The application will generate an interactive map which shows all the nearby Washers. These Washers are rated, can advertise extras, pickup, deliver, wash at your house, and more… It is all up to the Wash-me's/Washers. Nonetheless at the end of each day, whoever wants their clothes washed, will have them washed.

**2. Link To App**

  https://wash-me.herokuapp.com/

**3. Installation**

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

**4. User Stories**

![alt text](https://github.com/fraserisland/wash-me-app/blob/master/app/wireframes/trello.png)

**5. Wire-Frames**
* Home Page
![alt text](https://github.com/fraserisland/wash-me-app/blob/master/app/wireframes/Home.png)
* Near You
![alt text](https://github.com/fraserisland/wash-me-app/blob/master/app/wireframes/Near-you.png)
* New Message
![alt text](https://github.com/fraserisland/wash-me-app/blob/master/app/wireframes/New-message.png)
* Paying
![alt text](https://github.com/fraserisland/wash-me-app/blob/master/app/wireframes/Paying.png)
* Profile
![alt text](https://github.com/fraserisland/wash-me-app/blob/master/app/wireframes/Profile.png)

**6. Project Timeline**

![alt text](https://github.com/fraserisland/wash-me-app/blob/master/app/wireframes/Gant-chart.erd.png)

**7. ERD**

![alt text](https://github.com/fraserisland/wash-me-app/blob/master/app/wireframes/erd.png)

**8. List of Tools Used**

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


**9. Ruby version**

  Ruby 2.3.4

  Rails 5.2.0
