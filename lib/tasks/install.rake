desc 'Install Rails dependencies'
task install: :environment do
  exec 'bundle install'
end