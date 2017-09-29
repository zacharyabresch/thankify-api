# Thankify

A Rails app that allows users to keep a journal of **Thankifications** (gratitudes). I mostly created this project to use some new (and old) technologies I'm honing my skills on.


## Stuff Being Used

* Node (v8.4.0)
* Ruby on Rails (v5.1)
* `create-react-app`
* `foreman`
* `rspec`

## Stuff you have to do

* Clone this repository
* `cd thankify-api`
* `bundle install`
* `cd client`
* `npm i`
* `cd ../`
* `rake db:migrate && rake db:seed`
* `rake app:start`

## Stuff I have to do

* [ ] Implement `react-router-dom` for navigation
* [ ] Implement creating `thankifications`
* [ ] Implement editing `thankifications`?
* [ ] Write tests
* [ ] Implement user authentication (token for API?)
* [ ] Flesh out DevOps (`vagrant` provisioning, CI/CD, deployment)
* [ ] Implement validation errors for Rails models in React