require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:user1)
    @user2 = users(:user2)
  end

  test 'unsuccessful edit' do
    log_in_as(@user)
    get edit_user_path(@user)
    assert_template('users/edit')
    patch user_path(@user), params:
                              {
                                user: {
                                  name: '',
                                  email: 'user@invalid',
                                  password: 'wrong',
                                  password_confirmation: 'alsowrong'
                                }
                              }
    assert_template('users/edit')
    assert_select 'div.alert', I18n.t('form.user.errors', count: assigns(:user).errors.count)
  end

  test 'successful edit with friendly forward' do
    get edit_user_path(@user)
    assert_redirected_to login_url
    log_in_as(@user)
    assert_redirected_to edit_user_url(@user)
    name = 'Foo Bar'
    email = 'foo@bar.com'
    patch user_path(@user), params: {
      user: {
        name:,
        email:,
        password: '',
        password_confirmation: ''
      }
    }
    assert_not flash.empty?
    assert_redirected_to @user
    @user.reload
    assert_equal name, @user.name
    assert_equal email, @user.email
  end

  test 'friendly redirect back to edit only activates once' do
    get edit_user_path(@user)
    assert_redirected_to login_url
    log_in_as(@user)
    assert_redirected_to edit_user_url(@user)
    delete logout_path
    get login_path
    log_in_as(@user)
    assert_redirected_to @user
  end

  test 'navigating to a static page clears stored redirect back to edit' do
    get edit_user_path(@user)
    assert_redirected_to login_url
    get root_path
    get login_path
    log_in_as(@user)
    assert_redirected_to @user
  end
end
