class AddUserAndOrganizationToDeal < ActiveRecord::Migration[7.0]
  def change 
    change_table :deals do |t|
      t.belongs_to :organization
      t.belongs_to :user
    end
  end
end
