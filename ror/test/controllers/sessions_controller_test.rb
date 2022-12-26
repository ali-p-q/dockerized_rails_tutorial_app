require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should not login" do
    get login_path
    assert_response :success
    assert_template 'sessions/new'
    post login_path, params: { session: { email: "",
                                          password: "" } }
    assert_template "sessions/new"
  end
  
  test "should login" do
    get login_path
    assert_response :success
    assert_template 'sessions/new'
    post login_path, params: { session: { email: "user1@example.com",
                                          password: "123123" } }
    assert_not_nil session[:user_id]
  end
end
