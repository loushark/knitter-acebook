# AceBook - Knitter - Team Mugshot
#### Makers Academy - Week 8-9 Group Engineering Challenge

## Live Version:
The app is hosted on Heroku.
- http://knitter-acebook.herokuapp.com/

## Summary
Team Mugshot developed over a two week period a facebook clone called Knitter. It is a ruby-on-rails web application hosted on Heroku.

The team worked in an Agile manner, running morning stand-ups and evening retros. We used a Trello board to manage our work.

We planned the work around short sprints, with different pairs each day to allow everybody a chance to work with each other. In the second week as we progressed into more complex features, we ran two day sprints in order to allow adequate time to complete the features. Each of the pull requests was reviewed by another pair to ensure robust code quality.

We defined our MVP early on and completed it on early Thursday in the first week, here we followed the principle of build a skateboard not a car door. Our MVP contained the bare essentials of a facebook app - posting, login, logout and sign up. When we finished the MVP we then proceeded to pick up additional tickets as pairs became free.

The team rotated leadership and scribe roles everyday in order to give everyone leadership experience and to keep fresh perspectives.

We also had a strong focus on learning as a team, and each day we would share our learnings and several times a week we would run demos for what we had developed and learnt.

By the end of the two weeks, we had implemented a well rounded web application with multiple features (including posts with images, likes, comments and friending) and had great fun and a good learning experience.

## Developers:
- Lou Reade (loushark)
- Ralph Bartley (ralphbartley)
- Sha Cheng (cspoppuppy)
- David Greaves (dmgreaves)
- Nata Sherchenkova (TataSher)
- Max Strivens (mstrivens)
- Will Spencer (willspencer16)
- Jack McCarthy (jackmcc08)

## Techstack
- Frontend Rendering and Backend - Ruby on Rails using Postgresql & AWS (for live version)
- Frontend styling and interaction - HTML, CSS and Javascript (for ajax partial rendering)
- Testing: RSPEC (with gems for rails)
- Linting: Rubocop (with gems for rails and rspec)
- Additional and cool features:
  - React - developed a Frontend chat room feature as a demo (thanks Sha!)
  - Used partials to keep code clean and enhance SRP principles
  - Used Ajax to partially adjust the web page and allow a smooth user experience.
  - Used bcrypt for password hashing

## Testing
At the time of submission we had 100% code coverage. Our focus during testing was on user feature tests and controller unit tests, all written with the rspec testing gem.

For future testing, we would like to look at expanding the unit testing to look at the views and models.

## Development Assets
- Trello Link - https://trello.com/b/W5iLxKUH/mugshot-acebook-trello
- Website Mocks - https://docs.google.com/presentation/d/1ZJ_ZCYsrrXyMddg4d9DQqP3l_1KN8RT6z8519ccZwBk/edit?usp=sharing
- Domain Model - https://docs.google.com/spreadsheets/d/1wSUAxma1pCMuYnkulIyDUz35_FCYHC7sX2aMejOF94k/edit?usp=sharing

## Current Bugs and Future Improvements
- Live version seems to retain session information
- Develop a react front end
- Implement more ajax routing for friend button, login and logout.
- Implement delete functionality for posts and comments


## To see the code and develop further

First, clone this repository. Then:

```bash
> bundle install
> bin/rails db:create
> bin/rails db:migrate

> bundle exec rspec # Run the tests to ensure it works
> bin/rails server # Start the server at localhost:3000
```

## Troubleshooting

If you don't have Node.js installed yet, you might run into this error when running rspec:

```
ExecJS::RuntimeUnavailable:
  Could not find a JavaScript runtime. See https://github.com/rails/execjs for a list of available runtimes.
 ```

Rails requires a Javascript runtime to work. The easiest way is to install Node by running `brew install node` - and then run `bundle exec rspec` again
