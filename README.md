
# do it good
## project setup (osx)

 - install [ruby](https://www.ruby-lang.org/en/documentation/installation/)
   - currently we are using ruby `2.6.0`
 - install bundler -> `gem install bundler`
 - install [rvm](https://rvm.io/) or other ruby version manager (ie. [rbenv](https://rvm.io/))
 - install [direnv](https://direnv.net/)
 - install [Ruby on Rails 5.2.3](https://gorails.com/setup/ubuntu/19.10)
 - install [node.js](https://nodejs.org/en/download/)
 - install [yarn](https://yarnpkg.com/lang/en/docs/install/#mac-stable)
 - clone the project
 - `bundle install`
 - `rake db:create`
 - `rake db:migrate`
 - `rake db:seed`
 - `yarn install`


 ## to start the project
 `rails server`

 ## to start tests
 - in progress

 ## to deploy
 - in progress

 ## how to contribute

 - we use [gitflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)
 - **never** commit directly to master
 - each feature branch should have unique number (number is taken from our Trello features board)
 - if your feature branch is ready, submit a PR (pull request)
 - wait for approval
 - merge to develop

 ## in the future
 - automatic docker deployment
