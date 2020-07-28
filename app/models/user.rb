class User < ApplicationRecord
  validates :email, :name, :password, presence: true
  has_many :notes
end
