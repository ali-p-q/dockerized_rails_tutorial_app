desc 'Launch IRB'
task :irb do
  sh 'docker-compose exec web irb'
end
