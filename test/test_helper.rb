# frozen_string_literal: true

ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require 'rspec'

class ActiveSupport::TestCase
  # Make full title helper available to test suite
  include FullTitleHelper
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  def logged_in?
    !session[:user_id].nil?
  end

  def log_in_as(user)
    session[:user_id] = user.id
  end

  def request_url_eql?(url)
    request.original_url == url
  end
end

class ActionDispatch::IntegrationTest
  def log_in_as(user, password: '123123', remember_me: '1')
    post(login_path,
         params: {
           session: {
             email: user.email,
             password:,
             remember_me:
           }
         }
        )
  end
end
