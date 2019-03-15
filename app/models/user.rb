class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :sleeps

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

  def last_night_sleep_time
    friendly_sleep_time(self.sleeps.last.time_in_bed)
  end

  def average_total_sleep_time
    sleep_times = self.sleeps.map { |sleep| sleep.time_in_bed }
    avg_time_in_bed = sleep_times.sum / sleep_times.length
    friendly_sleep_time(avg_time_in_bed)
  end
end
