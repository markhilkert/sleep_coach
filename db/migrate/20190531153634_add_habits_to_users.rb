class AddHabitsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :track_alcohols, :boolean, default: false
    add_column :users, :track_caffeines, :boolean, default: false
    add_column :users, :track_exercises, :boolean, default: false
    add_column :users, :track_late_meals, :boolean, default: false
    add_column :users, :track_morning_suns, :boolean, default: false
    add_column :users, :track_naps, :boolean, default: false
    add_column :users, :track_relaxes, :boolean, default: false
  end
end
