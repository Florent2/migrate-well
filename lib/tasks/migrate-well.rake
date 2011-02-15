namespace :db do
  namespace :migrate do
    desc 'Run migration (db:migrate), redo it (db:redo), prepare test db (db:test:prepare) and annotate models (annotate). Options: "redo=false": without db:redo; "test=false": without db:test:prepare; "anno=false": without annotate.'
    task :well do
      abort "Aborted because you use removed options. Please use the new options, to see them run rake -D well" if ENV["without_redo"] || ENV["wr"] || ENV["without_test_prepare"] || ENV["wt"] || ENV["without_annotate"] || ENV["wa"]

      system_with_echo "rake db:migrate"
      
      system_with_echo "rake db:migrate:redo" unless ENV["redo"] == "false"

      system_with_echo "rake db:test:prepare"  unless ENV["test"] == "false"

      unless ENV["anno"] == "false"
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