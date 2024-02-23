class AddNameToUsersTable < ActiveRecord::Migration[7.0]
  def change
    change_table :users do |t|
      t.string :first_name, :last_name
    end
  end
end
