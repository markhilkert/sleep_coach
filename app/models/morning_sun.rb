class MorningSun < Event
  validates :sleep_id, uniqueness: true
end
