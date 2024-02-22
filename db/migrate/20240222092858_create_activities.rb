class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :title, :type, :status, :active_type
      t.integer :active_id
      t.date :due_date
      t.belongs_to :user
      t.timestamps
    end
  end
end
