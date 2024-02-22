class Activity < ApplicationRecord
  belongs_to :active, polymorphic: true
end