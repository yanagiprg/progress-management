class Member < ApplicationRecord
  has_many :diaries
  has_secure_password
  validates :name, length: { maximum: 10 }, presence: true
end
