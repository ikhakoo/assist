class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :service_type
      t.integer :service_rating
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
