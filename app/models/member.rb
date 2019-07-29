class Member < ApplicationRecord
  has_many :diaries
  validates :name, length: { maximum: 10 }, presence: true
end
