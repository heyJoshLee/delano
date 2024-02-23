class AddBusinessIdToDeals < ActiveRecord::Migration[7.0]
  def change
    add_column :deals, :business_id, :integer
  end
end
