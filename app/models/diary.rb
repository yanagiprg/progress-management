class Diary < ApplicationRecord
  belongs_to :member
  validates :member_id, presence: true
end
