require "test_helper"

class UsersLoginTest < ActionDispatch::IntegrationTest
  test "login test" do
    get login_path
    assert_response :success
    assert_template 'sessions/new'
    post login_path, params: { session: { email: "", password: "" } }
    get root_path
    assert flash.empty?
  end
end
