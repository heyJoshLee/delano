class Deal < ApplicationRecord
  belongs_to :organization
  has_one :user
  has_many :activities, as: :active


  STATUS_OPTIONS = [
      ["Cold", 0],
      ["Initial Touch", 1],
      ["Nurturing", 2],
      ["Talking", 3],
      ["Current", 4],
      ["Paused", 5],
      ["Done", 6]
  ]

end