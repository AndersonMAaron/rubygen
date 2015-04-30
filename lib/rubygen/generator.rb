require 'rubygen/writer'
#TODO require 'rubygen/project'

module Rubygen
  class Generator
    def initialize(project_name, destination, logger=nil)
      @writer = Rubygen::Writer.new(File.join(destination, project_name))
      @project_name = project_name
    end

    # TODO generate Project model and write it to file
    def generate_project
      @writer.make_project_root

      project_dirs = %w(docs lib spec bin)
      @writer.create_dirs(project_dirs)

      files = {
        :executable => "bin/#{@project_name}",
        :gemspec => '',
        :gitignore => '.gitignore',
        :gitattributes => '.gitattributes',
        :gemspec => "#{@project_name}.gemspec",
      }
      @writer.copy_templates_for(files)
    end
  end
end
