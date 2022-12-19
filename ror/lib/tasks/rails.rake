desc "Run a Rails command, e.g. rake rails CMD=version"
task :rails do
  cmd = ENV.fetch('CMD', 'version')
  sh "docker-compose exec web rails #{cmd}"
end