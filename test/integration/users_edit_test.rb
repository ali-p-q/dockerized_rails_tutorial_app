require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:user1)
  end

  test 'unsuccessful edit' do
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
end
