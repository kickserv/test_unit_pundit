module Pundit
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      def create_test_folder
        empty_directory('test/policies')
      end
    end
  end
end