require 'fileutils'

module Rubygen
  class Writer
    # Locations templated files will be written to (with respect to 'parent_dir')
    TEMPLATE_LOCATIONS = {
      :executable => 'bin',
      :git => '',
      :readme => '',
      :gemspec => '',
    }

    def initialize(project_root)
      @project_root = project_root
    end

    def make_project_root
      FileUtils.mkdir_p @project_root
    end

    def write_project(project, parent_dir)
      make_project_root(project, parent_dir)
      project.executables.each { |exe| write_executable(@project_root, exe) }
    end

    def create_dirs(dirs)
      dirs.each do |dir|
        FileUtils.mkdir_p(File.join(@project_root, dir))
      end
    end

    def copy_templates_for(files)
      files.each do |template, file_destination|
        FileUtils.cp(
          File.expand_path("#{__FILE__}/../../../templates/#{template.to_s}"),
          File.join(@project_root, file_destination)
        )
      end
    end

    private
      def write_artifact(project_root, artifact_type, artifact)
        FileUtils.cp(
          Rubygen.template_path_for(artifact_type),
          File.join(project_root, TEMPLATE_LOCATIONS[artifact_type], artifact)
        )
      end

      def write_executable(project_root, executable)
        write_artifact(project_root, :executable, executable)
      end

      def write_git_config(project_root, git_config)
        write_artifact()
      end
    #end private
  end
end
