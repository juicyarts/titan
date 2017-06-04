module Overcommit::Hook::Precommit
  class RakeTest < Base
    def run
      result = execute(command)
      unless result.success?
        return :fail, 'Rake Tests failed:\n#{result.stdout}'
      end
      :pass
    end
  end
end
