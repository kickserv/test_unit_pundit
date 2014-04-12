module Pundit
  module Generators
    class PolicyGenerator < ::Rails::Generators::NamedBase
      def create_policy_test_file
        template File.join(File.dirname(__FILE__), 'templates/policy_test.rb'), File.join('test/policies', class_path, "#{file_name}_policy_test.rb")
      end
    end
  end
end