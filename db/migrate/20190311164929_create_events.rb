class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :sleep_id
      t.time :time
      t.decimal :duration
      t.string :type

      t.timestamps
    end
  end
end
