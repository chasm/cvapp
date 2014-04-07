class User < ActiveRecord::Base

  attr_accessor :password, :password_confirmation

  validates :email, presence: true
  validates :password, confirmation: true
  validates :password_confirmation, presence: true, if: :password

  def self.authenticate(email, password)
  end
end
