require 'active_support/test_case'
require 'pundit/testing/assertions'

module Pundit
  class TestCase < ::ActiveSupport::TestCase
    include Pundit::Testing::Assertions
  end
end