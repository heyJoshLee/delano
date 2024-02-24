class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true, length: { minimum: 5, maximum: 50}
  validates :password, presence: true, length: { minimum: 5, maximum: 20}
  belongs_to :organization
  has_many :deals
  has_many :activities, as: :active


  def full_name
    "#{first_name} #{last_name}"
  end


end

