
module Rubygen
  class Project
    attr_reader :name,
                :executables

    def initialize(name, args={})
      @name = name
      @dirs = default_dirs.concat(args.fetch(:dirs, []))
      @git_config = default_git_config
      @executables = args.fetch(:executables, [])
    end

    def add_executable(executable)
      @executables << executable
    end
  end
end
