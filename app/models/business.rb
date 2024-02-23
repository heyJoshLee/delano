class Business < ApplicationRecord
  belongs_to :organization
  has_many :deals
  has_many :activities, as: :active
  has_many :contacts
end