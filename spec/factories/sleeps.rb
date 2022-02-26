FactoryBot.define do
  factory :sleep do
    association :user
    start_time { 1.day.ago.end_of_day - 2.hours }
    end_time { Time.now.beginning_of_day + 6.hours }
    good_sleep { true }
    bath_before_bed { false }
    dark_room { true }
    cool_room { true }
    clock_visible { false }
    electronics_in_room { true }
    lie_in_bed { false }
    room_temperature { 68 }
  end
end

