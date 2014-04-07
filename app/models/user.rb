require 'bcrypt'

class User < ActiveRecord::Base

  attr_accessor :password, :password_confirmation

  validates :email, presence: true
  validates :password, confirmation: true
  validates :password_confirmation, presence: true, if: :password

  def self.authenticate(email, password)
    user = User.find_by email: email
    user if user and user.authenticate(password)
  end

  def authenticate(password)
    self.fish == BCrypt::Engine.hash_secret(password, self.salt)
  end
end
