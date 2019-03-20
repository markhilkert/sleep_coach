class Sleep < ApplicationRecord
  belongs_to :user
  has_many :digestions
  has_many :events

  has_one :alcohol
  has_one :caffeine
  has_many :exercises
  has_one :late_meal
  has_one :morning_sun
  has_many :naps
  has_one :relax

  def time_in_bed
    time_in_seconds = self.end_time - self.start_time
  end
end