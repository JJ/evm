module Evm
  class Git
    def initialize(path)
      @path = path
    end

    def exist?
      File.exist?(@path)
    end

    def clone(url)
      git 'clone', url, @path
    end

    def pull
      Dir.chdir(@path) do
        git 'pull'
      end
    end

    def upgrade
      Dir.chdir(@path) do
        git 'upgrade'
      end
    end


    private

    def git(*args)
      @git ||= Evm::System.new('git')
      @git.run(*args, '--depth=1')
    end
  end
end
