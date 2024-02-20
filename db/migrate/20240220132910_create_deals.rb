class CreateDeals < ActiveRecord::Migration[7.0]
  def change
    create_table :deals do |t|
      t.string :name, :source
      t.integer :rating, :status
      t.text :notes
      t.timestamps
    end
  end
end
