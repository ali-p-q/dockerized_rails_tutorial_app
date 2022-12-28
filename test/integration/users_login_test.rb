require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:user1)
  end

  test 'login with valid credentials and logout' do
    get login_path
    post login_path, params: { session: { email: @user.email,
                                          password: '123123' } }
    assert is_logged_in?
    assert_redirected_to @user
    follow_redirect!
    assert_template 'users/show'
    assert_select 'a[href=?]', login_path, count: 0
    assert_select 'a[href=?]', logout_path
    assert_select 'a[href=?]', user_path(@user)
    delete logout_path
    assert_not is_logged_in?
    assert_redirected_to root_path
    follow_redirect!
    assert_select 'a[href=?]', login_path, count: 1
    assert_select 'a[href=?]', logout_path, count: 0
    assert_select 'a[href=?]', user_path(@user), count: 0
  end

  test 'try to login with valid email invalid password' do
    get login_path
    assert_response :success
    assert_template 'sessions/new'
    post login_path, params: { session: { email: @user.email, password: '' } }
    assert_not is_logged_in?
    assert_not flash[:danger].nil?
  end

  test 'try to login with invalid email and invalid password' do
    get login_path
    assert_response :success
    assert_template 'sessions/new'
    post login_path, params: { session: { email: '', password: '' } }
    assert_not is_logged_in?
    assert_not flash[:danger].nil?
  end
end
