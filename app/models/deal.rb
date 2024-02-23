class Deal < ApplicationRecord
  belongs_to :organization
  belongs_to :user
  belongs_to :business
  has_many :activities, as: :active
  has_one :contact


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