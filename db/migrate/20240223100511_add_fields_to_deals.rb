class AddFieldsToDeals < ActiveRecord::Migration[7.0]
  def change
    change_table :deals do |t|
      t.integer :value, :priority, :stage, :contact_id
      t.string :category, :deal_type
      t.date :close_date
    end
  end
end
