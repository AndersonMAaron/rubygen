Gem::Specification.new do |s|
  s.name        = 'rubygen'
  s.version     = '0.0.1'
  s.date        = '2015-04-23'
  s.summary     = 'Rubygen'
  s.description = 'Ruby project repository generator'
  s.homepage    = 'https://github.com/andersonmaaron/rubygen'
  s.authors     = ['AndersonMAaron']
  s.email       = 'andersonmaaron@gmail.com'

  s.executables << 'rubygen'

  s.files       = Dir['lib/**/*.rb'] + Dir['templates/**/*']

  s.add_development_dependency 'rake', '~> 10.4', '>= 10.4.2'
  s.add_development_dependency 'rspec', '~> 3.2'
  s.add_development_dependency 'simplecov', '~> 0.9', '>= 0.9.1'
end
