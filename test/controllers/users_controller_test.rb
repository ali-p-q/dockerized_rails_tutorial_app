# frozen_string_literal: true

require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:user1)
    @other_user = users(:user2)
  end

  test 'should get new' do
    get signup_path
    assert_response :success
    assert_select 'title', full_title('Sign up')
  end

  test 'should redirect show when not logged in' do
    get user_path(@user)
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  test 'should redirect show when unauthorized' do
    log_in_as(@user)
    get user_path(@other_user)
    assert_not flash.empty?
    assert_redirected_to root_url
  end

  test 'should redirect edit when not logged in' do
    get edit_user_path(@user)
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  test 'should redirect attempted unathorized edit' do
    log_in_as(@user)
    get edit_user_path(@other_user)
    assert_not flash.empty?
    assert_redirected_to root_url
  end

  test 'should redirect update when not logged in' do
    patch user_path(@user), params: {
      user: {
        name: @user.name,
        email: @user.email
      }
    }
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  test 'should redirect attempted unathorized update' do
    log_in_as(@user)
    patch user_path(@other_user), params: {
      user: {
        name: @other_user.name,
        email: @other_user.email
      }
    }
    assert_not flash.empty?
    assert_redirected_to root_url
  end
end
