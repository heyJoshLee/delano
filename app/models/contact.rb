class Contact < ApplicationRecord
  has_one :organization
  has_one :business
  has_one :user
  belongs_to :organization
  has_many :activities, as: :active

  def full_name
    "#{first_name} #{last_name}"
  end
end