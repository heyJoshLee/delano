class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  belongs_to :organization
  has_many :deals
  has_many :activities, as: :active


  def full_name
    "#{first_name} #{last_name}"
  end


end

