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
    self.start_time.to_date.strftime("%m/%d")
  end

  def time_in_bed
    time_in_seconds = self.end_time - self.start_time if self.end_time
  end

  def hours_in_bed
    time_in_bed * 1000 # This is actually miliseconds in bed, need to change this after the presentation
  end

  def change_start_time(new_time)
    return nil unless new_time
    hours, minutes = new_time.split(":")
    self.start_time.change(hour: hours, min: minutes)
  end

  def change_end_time(new_time)
    return nil unless new_time
    hours, minutes = new_time.split(":")
    self.end_time.change(hour: hours, min: minutes)
  end

  def simple_start_time
    hours = self.start_time.hour < 10 ? "0" + self.start_time.hour.to_s : self.start_time.hour.to_s
    minutes = self.start_time.min < 10 ? "0" + self.start_time.min.to_s : self.start_time.min.to_s
    hours + ":" + minutes
  end

  def simple_end_time
    hours = self.end_time.hour < 10 ? "0" + self.end_time.hour.to_s : self.end_time.hour.to_s
    minutes = self.end_time.min < 10 ? "0" + self.end_time.min.to_s : self.end_time.min.to_s
    hours + ":" + minutes
  end

  def wake_date
    self.end_time.strftime("%B %d, %Y")
  end

  def fall_asleep_date
    self.start_time.strftime("%B %d, %Y")
  end
end