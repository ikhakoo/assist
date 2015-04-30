class CreateAssistants < ActiveRecord::Migration
  def change
    create_table :assistants do |t|
      t.string :start_service
      t.string :end_service
      t.integer :service_id
      t.date :task_date
      t.integer :user_id
      t.integer :booking_id

      t.timestamps null: false
    end
  end
end
