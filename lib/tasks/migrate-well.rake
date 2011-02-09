namespace :db do
  namespace :migrate do
    desc 'Run migration (db:migrate), redo it (db:redo), prepare test db (db:test:prepare) and annotate models (annotate). Options: "wr=true": without db:redo; "wt=true": without db:test:prepare; "wa=true": without annotate.'
    task :well do
      system_with_echo "rake db:migrate"

      unless ENV["without_redo"] == "true" || ENV["wr"] == "true"
        system_with_echo "rake db:migrate:redo" 
      end

      unless ENV["without_test_prepare"] == "true" || ENV["wt"] == "true"
        system_with_echo "rake db:test:prepare" 
      end
      
      unless ENV["without_annotate"] == "true" || ENV["wa"] == "true"
        begin
          require "annotate"
          system_with_echo "bundle exec annotate" 
        rescue LoadError
        end
      end
    end
    
    def system_with_echo(command)
      puts "\n\n*** Running: #{command}"
      abort unless system(command)
    end
    
  end
end