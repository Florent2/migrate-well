migrate-well
============

migrate-well is a very simple gem for Rails 3. It adds a rake task `db:migrate:well` that runs `rake db:migrate`, `rake db:migrate:redo`, `rake db:test:prepare` and `annotate`.

It has been tested with Rails 3.0.3.

To install: add `gem "migrate-well"` in your `Gemfile` and run `bundle install`

To run: `rake db:migrate:well`

Options:

  * `without_redo=true` or `wr=true`: don't run the `db:migrate:redo` task
  * `without_test_prepare=true` or `wt=true`: don't run the `db:test:prepare` task
  * `without_annotate=true` or `wa=true`: don't run the `annotate` command
  
Examples:

  * run without annotating: `rake db:migrate:well wa=true`
  * run without annotating and without redoing the migration: `rake db:migrate:well wr=true wa=true`
  
TODO

  * allow passing of options to the annotate command
  * tests...