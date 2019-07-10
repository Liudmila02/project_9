class User < ApplicationRecord
  has_many :tasks
  has_secure_password
    validates :first_name, length: { maximum: 30 }
    validates :last_name, length: { maximum: 30 }
    validates :email, presence: true, uniqueness: true
    validates :password, length: { maximum: 6 }
end
