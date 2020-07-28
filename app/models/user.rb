class User < ApplicationRecord
  validates :email, :name, presence: true
  has_many :notes
  has_secure_password
end
