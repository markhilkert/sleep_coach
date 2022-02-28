class DropUsers < ActiveRecord::Migration[5.2]
  def change
    drop_table :users do
      t.string "name"
      t.string "email"
      t.string "password_digest"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.boolean "track_alcohols", default: false
      t.boolean "track_caffeines", default: false
      t.boolean "track_exercises", default: false
      t.boolean "track_late_meals", default: false
      t.boolean "track_morning_suns", default: false
      t.boolean "track_naps", default: false
      t.boolean "track_relaxes", default: false
    end
  end
end
