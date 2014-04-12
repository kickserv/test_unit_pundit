require 'pundit/test_case'

require 'minitest/unit'
require 'minitest/autorun'
require 'minitest/pride'

class AssertPermittedTest < Pundit::TestCase
  def test_assert_permitted_true
    assert_permitted User.new(true), Post.new, :update?
  end

  def test_assert_permitted_false
    begin
      assert_permitted User.new(false), Post.new, :update?
      fail 'should not get to here'
    rescue Exception => e
      assert_match(/Expected to grant/, e.message)
    end
  end
end

class AssertForbiddenTest < Pundit::TestCase
  def test_assert_forbidden_true
    assert_forbidden User.new(false), Post.new, :update?
  end

  def test_assert_forbidden_false
    begin
      assert_forbidden User.new(true), Post.new, :update?
      fail 'should not get to here'
    rescue Exception => e
      assert_match(/Expected not to grant/, e.message)
    end
  end
end



class User
  attr_accessor :admin

  def initialize(admin)
    @admin = admin
  end
end

class Post
end

class Policy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def update?
    return true if user.admin
  end
end

class AssertPermitted < Policy
end

class AssertForbidden < Policy
end