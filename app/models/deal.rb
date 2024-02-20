class Deal < ApplicationRecord

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