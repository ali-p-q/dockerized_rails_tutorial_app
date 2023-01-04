# frozen_string_literal: true

require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  def setup
    @invalid_user = User.new
  end

  test 'should not submit invalid user on signup form' do
    assert_no_difference 'User.count' do
      get signup_path
      post users_path, params: {
        user: {
          name: '',
          email: 'user@example',
          password: 'foobar',
          password_confirmation: 'foobar'
        }
      }
    end
    assert_template 'users/new'
    assert_select 'div#error_explanation'
    assert_select 'div.alert'
  end

  test 'should gracefully reject duplicate email on attempted signup' do
    assert_no_difference 'User.count' do
      get signup_path
      duplicate_user = users(:user1)
      post users_path, params: {
        user: {
          name: duplicate_user.name,
          email: duplicate_user.email,
          passoword: '123123',
          password_confirmation: '123123'
        }
      }
    end
    assert_template 'users/new'
    assert_select 'div#error_explanation'
    assert_select 'div.alert'
  end

  test 'should login valid user on successful signup' do
    assert_difference 'User.count', 1 do
      get signup_path
      post users_path, params: {
        user: {
          name: 'user',
          email: 'user@example.com',
          password: 'foobar',
          password_confirmation: 'foobar'
        }
      }
    end
    follow_redirect!
    assert_template 'users/show'
    assert_not flash.empty?
    assert logged_in?
  end
end
