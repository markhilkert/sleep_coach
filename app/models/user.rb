class User < ApplicationRecord
  # TODO: install devise
  validates :email, presence: true, uniqueness: true

  has_many :sleeps

  # TODO: redundant, maybe make a time untilities class
  # to handle stuff like this
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

  def sleeping
    !self.sleeps.last.end_time
  end

  def last_night_sleep_time
    if !self.sleeping
      friendly_sleep_time(self.sleeps.last.time_in_bed)
    elsif self.sleeping && self.sleeps[-2].time_in_bed
      friendly_sleep_time(self.sleeps[-2].time_in_bed)
    else
      "no time"
    end
  end

  def last_sleep_id
    self.sleeps.last.id
  end

  def average_total_sleep_time
    sleep_times = self.sleeps.inject([]) { |completed_sleeps, sleep| completed_sleeps << sleep.time_in_bed if sleep.time_in_bed; completed_sleeps }
    if sleep_times.length == 0
      return 'nil'
    else
      avg_time_in_bed = sleep_times.sum / sleep_times.length
      friendly_sleep_time(avg_time_in_bed)
    end
  end
end
