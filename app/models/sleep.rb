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

  def friendly_sleep_time(time_in_seconds)
    time_in_hours = time_in_seconds / 60 / 60.0
    hours = time_in_hours.floor
    minutes = ((time_in_hours - hours) * 60).floor
    time_message = ""

      time_message += "#{hours} #{'Hour'.pluralize(hours)}" if hours > 0
      time_message += ", " if hours > 0 && minutes > 0 
      time_message += "#{minutes} #{"Minute".pluralize(minutes)}" if minutes > 0
      time_message += "no time" if time_message == ""

    time_message
  end

  def sleep_date
    self.start_time.to_date    
  end

  def time_in_bed
    time_in_seconds = self.end_time - self.start_time if self.end_time
  end

  def hours_in_bed
    time_in_bed / 60 / 60.0
  end
end