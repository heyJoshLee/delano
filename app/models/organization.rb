class Organization < ApplicationRecord
  has_many :users
  has_many :businesses
  has_many :deals
  has_many :contacts
end