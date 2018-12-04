# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

please run 

rails db:create
rails db:migrate
rails db:seed

Please find the API end points below


http :3000/signup email=spshanmugamurthi@gmail.com password=password password_confirmation=password

http POST :3000/subscriptions subscribable_id=1 subscribable_type=Movie Authorization:'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1NDM5ODI2ODF9.5a0o0ObjOuUm6lclAS1Dm_NpjzzPQsr1530fhCZkpFk'

http :3000/contents
http :3000/movies
http :3000/seasons
http :3000/subscriptions
