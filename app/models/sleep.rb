class Sleep < ApplicationRecord
  belongs_to :user
  has_many :digestions
  has_many :events

  has_many :alcohols
  has_many :caffeines
  has_many :exercises
  has_many :late_meals
  has_many :morning_suns
  has_many :naps
  has_many :relaxes

end