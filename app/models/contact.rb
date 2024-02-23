class Contact < ApplicationRecord
  has_one :organization
  belongs_to :business
  belongs_to :user
  belongs_to :organization
  has_many :activities, as: :active
  has_many :deals

  def full_name
    "#{first_name} #{last_name}"
  end
end