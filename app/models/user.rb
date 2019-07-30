class User < ApplicationRecord
  has_many :tasks
  validates_associated :tasks
  has_secure_password
    validates :first_name, length: { maximum: 30 }, presence: true
    validates :last_name, length: { maximum: 30 }, presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
    validates :password, length: { minimum: 6 }, presence: true

  
end
