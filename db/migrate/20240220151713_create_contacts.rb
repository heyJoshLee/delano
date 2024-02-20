class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :first_name, :last_name, :title, :email, :phone
      t.integer :status, :company_id
      t.text :notes
      t.timestamps
    end
  end
end
