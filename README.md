# README

This is a Ruby on Rails backend designed for the NASA 2017 Space App Challenge, Taipei.

Things you may want to cover:

* Ruby version

Ruby 2.4.1

* System dependencies

None

* Configuration

None

* Database creation

```rails db:create```

* Database initialization

```rails db:migrate```

* How to run the test suite

None

* Services (job queues, cache servers, search engines, etc.)

None

* Deployment instructions

```rails s```

You may need to modify the web link in the apps/jobs/call_server_job.rb to call the LandSlide_BengBengBeng main server correctly.

You have to add RECAPTCHA_SITE_KEY and RECAPTCHA_SECRET_KEY in the [https://github.com/deror1869107/landslide_backend/blob/fd8a82d8f5a0518761cff12e2c87b8e75cbe9ea3/config/initializers/recaptcha.rb](config/initializers/recaptcha.rb) to use ReCAPTCHA Service.
