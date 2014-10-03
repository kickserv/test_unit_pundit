require 'rails'

module TestUnitPundit
  class Railtie < ::Rails::Railtie
    generators do
      load File.join(File.expand_path("../../generators/test_unit_pundit/install", __FILE__), "install_generator.rb")
    end

    rake_tasks do
      load File.join(File.expand_path("../../tasks", __FILE__), "testing.rake")
    end
  end
end