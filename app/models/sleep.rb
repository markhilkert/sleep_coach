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


  def friendly_sleep_time(time_in_seconds)
    time_in_hours = time_in_seconds / 60 / 60.0
    hours = time_in_hours.floor
    minutes = (time_in_hours - hours) * 60
    time_message = ""

      time_message += "#{hours} #{'Hour'.pluralize(hours)}" if hours > 0
      time_message += ", " if hours > 0 && minutes > 0 
      time_message += "#{minutes} #{"Minute".pluralize(minutes)}" if minutes > 0

    time_message
  end

  def last_night_sleep_time(sleep_start_time, sleep_end_time)
    time_in_seconds = sleep_end_time - sleep_start_time
    friendly_sleep_time(time_in_seconds)
  end
end