require 'active_support/dependencies'

module Fenix
  module Common
    VERSION = "0.1.0"

    def self.autoload_dir path=__FILE__
      ActiveSupport::Dependencies.autoload_paths << File.dirname(File.dirname(path))
    end

  end
end

Fenix::Common.autoload_dir
