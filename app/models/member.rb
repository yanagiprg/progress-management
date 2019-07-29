class Member < ApplicationRecord
  has_many :diaries, dependent: :destroy
  validates :name, length: { maximum: 10 }, presence: true
end
