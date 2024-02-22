class ChangeContactsAssociations < ActiveRecord::Migration[7.0]
  def change
    add_column :contacts, :user_id, :integer
    rename_column :contacts, :company_id, :business_id

    change_table :contacts do |t|
      t.belongs_to :organization
    end

  end
end
