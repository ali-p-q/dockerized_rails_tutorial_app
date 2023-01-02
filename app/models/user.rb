# frozen_string_literal: true

#
# User model
#
class User < ApplicationRecord
  # User name validations
  validates :name, presence: true, length: { maximum: 255 }
  # User email validations
  before_save { email.downcase! }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d-]+(\.[a-z\d-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true

  # User password validations
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  # User remember token accessor methods
  attr_accessor :remember_token

  # Saves a remember_digest to database
  def remember
    self.remember_token = User.new_token
    # has to bypass validations (no access to password/password_confirmation)
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  def authenticated?(remember_token)
    return false if remember_digest.nil?

    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end

  def forget
    # has to bypass validations (no access to password/password_confirmation)
    update_attribute(:remember_digest, nil)
  end

  class << self
    # Returns the hash digest of the given string.
    def digest(string)
      cost = if ActiveModel::SecurePassword.min_cost
               BCrypt::Engine::MIN_COST
             else
               BCrypt::Engine.cost
             end
      BCrypt::Password.create(string, cost:)
    end

    # Returns a base64 url safe string
    def new_token
      SecureRandom.urlsafe_base64
    end
  end
end
