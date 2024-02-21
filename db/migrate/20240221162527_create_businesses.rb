class CreateBusinesses < ActiveRecord::Migration[7.0]
  def change
    create_table :businesses do |t|
      t.string :name, :url, :notes, :phone, :address_line_1, :address_line_2, :city, :state, :zip, :country
      t.integer :rating, :status
      t.belongs_to :organization
      t.timestamps
    end
  end
end
