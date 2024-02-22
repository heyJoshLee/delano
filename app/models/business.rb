class Business < ApplicationRecord
  belongs_to :organization
  has_many :deals
end