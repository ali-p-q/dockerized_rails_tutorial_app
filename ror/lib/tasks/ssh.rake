desc "SSH into a service. Defaults to 'web'."
task :ssh do
  service = ENV.fetch('SERVICE', 'web')
  sh "docker-compose exec #{service} bash"
end