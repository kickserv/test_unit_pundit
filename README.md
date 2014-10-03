# Test Unit Pundit

Adds rake test sub task.

``` sh
rake test:policies
```

Generate `test/policies` directory, when running policy:install.

New generator template of policy test.

Provides some test helpers.


## Installation

``` ruby
gem 'test_unit_pundit'
```

## Test

Put your policy test in `test/policies`:

``` ruby
require 'test_helper'

class PostPolicyTest < Pundit::TestCase
  test "update? should deny access if post is published" do
    assert_forbidden User.new(admin: false), Post.new(published: true), :update?
  end

  test "update? should grant access if post is published and user is an admin" do
    assert_permitted User.new(admin: true), Post.new(published: true), :update?
  end

  test "update? should grant access if post is unpublished" do
    assert_permitted User.new(admin: false), Post.new(published: false), :update?
  end
end
```

*Note: test:policies can't run until original test tasks don't have error or failture, when running `rake test`. Now you should run `rake test:policies` to test policies.*
