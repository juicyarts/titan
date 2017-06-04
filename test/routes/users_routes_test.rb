require 'test_helper'

class UsersRoutesTest < ActionDispatch::IntegrationTest
  test "user list route" do
    assert_routing "/users", {:controller => "users", :action => "index"}
  end

  test "single user route" do
    assert_routing "/users/1", {:controller => "users", :action => "show", :id => "1"}
  end
end
