class Activity < ApplicationRecord
  belongs_to :user

  validates :user, presence: true
  validates :activity_type, presence: true

end
