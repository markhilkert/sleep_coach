class CleanUpUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :track_alcohols, type: :boolean, null: false
    remove_column :users, :track_caffeines, type: :boolean, null: false
    remove_column :users, :track_exercises, type: :boolean, null: false
    remove_column :users, :track_late_meals, type: :boolean, null: false
    remove_column :users, :track_morning_suns, type: :boolean, null: false
    remove_column :users, :track_naps, type: :boolean, null: false
    remove_column :users, :track_relaxes, type: :boolean, null: false
  end
end
