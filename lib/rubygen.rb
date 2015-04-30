require 'rubygen/generator'

module Rubygen
  def self.fail(msg='', logger=nil)
    logger.fatal(self.class.name) { msg } if logger
    raise msg
  end

  def self.generate_project(project_name, project_destination)
    Rubygen::Generator.new(project_name, project_destination).generate_project
  end

  def self.template_path_for(artifact)
    File.expand_path("#{File.dirname($0)}/../templates/#{artifact.to_s}")
  end
end
