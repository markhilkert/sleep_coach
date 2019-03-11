class CreateDigestions < ActiveRecord::Migration[5.2]
  def change
    create_table :digestions do |t|
      t.string :type
      t.integer :sleep_id
      t.decimal :amount
      t.time :time
      t.boolean :increased_impact

      t.timestamps
    end
  end
end
