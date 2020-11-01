# FlearnCo API

Gems used:
```
  coverband
  database_cleaner
  dotenv-rails
  guard-rspec
  pry-byebug
  pg
  rubocop
  rubocop-daemon
  rusky
  rspec-rails
  spring
  simplecov
  shoulda-matchers
```

- Ruby version: 2.7.2
- Configuration:
  Environment variables are stored in `.env`. A sample file was provided, run `mv .env.sample .env` to rename it so `rails-dotenv` can read them in runtime.

- Database
  FlearnCo API uses PostgreSQL by default. Create and migrate the database with:
  ```
  rails db:create
  rails db:migrate
  ```

- How to run the test suite
  After DB creation and migration, simply run `rspec`.

- Deployment instructions
  To deploy to Heroku
  `bundle exec rake deploy:staging`
  `bundle exec rake deploy:development`
  `bundle exec rake deploy:production`
