class Organization < ApplicationRecord
  has_many :users
  has_many :businesses
  has_many :deals
  has_many :contacts
  has_many :activities, as: :active


  ACTIVITY_TYPE_OPTIONS = [
      ["Follow Up"],
      ["Email"],
      ["Call"],
      ["Initial Touch"],
      ["Nurture Touch"]
  ]

  ACTIVITY_STATUS_OPTIONS = [
    ["Todo"],
    ["In Progress"],
    ["Pause"],
    ["Complete"],
    ["Cancel"]
]


# TODO: fix
  def all_activities_for(child)
    output_array = []
    return child.each do |c|
      puts "==================================c"
      puts c.activities
      output_array << c.activities
    end
    puts "============ output array"
    p output_array
    output_array


  end




end