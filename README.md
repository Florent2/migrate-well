migrate-well
============

migrate-well is a very simple gem for Rails 3. It adds a rake task `db:migrate:well` that runs `rake db:migrate`, `rake db:migrate:redo`, `rake db:test:prepare` and `annotate` (only if the annotate gem is installed).

It has been tested with Rails 3.0.3.

To install: add `gem "migrate-well"` in your `Gemfile` and run `bundle install`

To run: `rake db:migrate:well`

Options:

  * `redo=false`: don't run the `db:migrate:redo` task
  * `test=false`: don't run the `db:test:prepare` task
  * `anno=false`: don't run the `annotate` command
  
Examples:

  * run without annotating: `rake db:migrate:well anno=false`
  * run without annotating and without redoing the migration: `rake db:migrate:well anno=false redo=false`
  
TODO

  * allow passing of options to the annotate command
  * tests...