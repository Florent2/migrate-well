require 'migrate-well'
require 'rails'

module MigrateWell
  class Railtie < Rails::Railtie
#    railtie_name :migratewell

    rake_tasks do
      load "tasks/migrate-well.rake"
    end
  end
end