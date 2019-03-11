class CreateSleeps < ActiveRecord::Migration[5.2]
  def change
    create_table :sleeps do |t|
      t.integer :user_id
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :good_sleep
      t.boolean :bath_before_bed
      t.boolean :dark_room
      t.boolean :cool_room
      t.boolean :clock_visible
      t.boolean :electronics_in_room
      t.boolean :lie_in_bed
      t.integer :room_temperature

      t.timestamps
    end
  end
end
