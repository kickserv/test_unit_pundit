require 'test_helper'

<% module_namespacing do -%>
class <%= class_name %>PolicyTest < Pundit::TestCase
  # test "update? should deny access if post is published" do
  #   assert_forbidden User.new(admin: false), Post.new(published: true), :update?
  # end

  # test "update? should grant access if post is published and user is an admin" do
  #   assert_permitted User.new(admin: true), Post.new(published: true), :update?
  # end

  # test "update? should grant access if post is unpublished" do
  #   assert_permitted User.new(admin: false), Post.new(published: false), :update?
  # end
end
<% end -%>