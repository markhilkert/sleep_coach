class Sleep < ApplicationRecord
  belongs_to :user
  has_many :digestions
  has_many :events

  has_one  :alcohol
  has_one  :caffeine
  has_one  :late_meal
  has_one  :morning_sun
  has_one  :relax

  has_many :naps
  has_many :exercises

  # TODO: we should validate that there is a start time, right?
  # ... and why aren't we just using `created_at` as the start time?

  #
  # Present the time in bed for this sleep in a human readable
  # format to be displayed on the front end
  #
  # @return [String]
  #
  def friendly_sleep_time
    if hours_in_bed > 0 && minutes_in_bed > 0
      "#{hours_in_bed} #{'Hour'.pluralize(hours_in_bed)}, "\
      "#{minutes_in_bed} #{"Minute".pluralize(minutes_in_bed)}"
    elsif hours_in_bed > 0
      "#{hours_in_bed} #{'Hour'.pluralize(hours_in_bed)}"
    elsif minutes_in_bed > 0
      "#{minutes_in_bed} #{"Minute".pluralize(minutes_in_bed)}"
    else
      "no time"
    end
  end

  #
  # Returns the date of the Sleep (that is, the date of
  # the night the person slept) as: "MM/DD",
  # e.g., "02/25"
  #
  # @return [String]
  #
  def sleep_date
    start_time.to_date.strftime("%m/%d")
  end

  #
  # Returns the total time slept in seconds
  #
  # @return [Integer]
  #
  def time_in_bed
    return unless end_time
    end_time - start_time
  end

  #
  # Returns the number of hours in bed
  #
  # @return [Integer]
  #
  def hours_in_bed
    (time_in_bed / 60.0 / 60.0).floor
  end

  #
  # Returns the number of hours spent in bed in seconds.
  #
  # This is used as a step towards getting the minutes spent in bed.
  # Once we subtract off the hours, getting the minutes is much easier.
  #
  # @return [Integer]
  #
  def hours_in_bed_in_seconds
    hours_in_bed * 60 * 60
  end

  #
  # Returns the minutes spent in bed
  # Note that the hours are subtracted out, so this isn't the total
  # minutes spent in bed.
  #
  # @return [Integer]
  #
  def minutes_in_bed
    min_in_bed_in_seconds = time_in_bed - hours_in_bed_in_seconds
    (min_in_bed_in_seconds / 60.0).floor
  end

  #
  # Returns total time slept in miliseconds
  #
  # This is used in the api as hours_in_bed, which is obviously
  # both bad and wrong. Need to change the front-end consumption
  # before fixing that.
  #
  # @return [<Type>] <description>
  #
  def miliseconds_in_bed

    # see app/views/api/sleeps/_sleep.json.jbuilder
    time_in_bed * 1000
  end

  # TODO: what is this?
  def change_start_time(new_time)
    return nil unless new_time
    hours, minutes = new_time.split(":")
    start_time.change(hour: hours, min: minutes)
  end

  # TODO: what is this?
  def change_end_time(new_time)
    return nil unless new_time
    hours, minutes = new_time.split(":")
    end_time.change(hour: hours, min: minutes)
  end

  # TODO: what is this?
  def simple_start_time
    hours = start_time.hour < 10 ? "0" + start_time.hour.to_s : start_time.hour.to_s
    minutes = start_time.min < 10 ? "0" + start_time.min.to_s : start_time.min.to_s
    hours + ":" + minutes
  end

  # TODO: what is this?
  def simple_end_time
    hours = end_time.hour < 10 ? "0" + end_time.hour.to_s : end_time.hour.to_s
    minutes = end_time.min < 10 ? "0" + end_time.min.to_s : end_time.min.to_s
    hours + ":" + minutes
  end

  #
  # Return the date the sleep ended
  # Format: Month DD, YYYY, e.g., "February 26, 2022"
  #
  # @return [String]
  #
  def wake_date
    end_time.strftime("%B %d, %Y")
  end

  #
  # Return the date the Sleep started
  # Format: Month DD, YYYY, e.g., "February 26, 2022"
  #
  # @return [String]
  #
  def fall_asleep_date
    start_time.strftime("%B %d, %Y")
  end
end
