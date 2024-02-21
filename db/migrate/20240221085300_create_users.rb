class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, :password_digest
      t.belongs_to :organization
      t.timestamps
    end
  end
end
