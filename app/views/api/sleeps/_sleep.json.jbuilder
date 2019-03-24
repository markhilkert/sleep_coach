json.id sleep.id
json.start_time sleep.start_time
json.end_time sleep.end_time
json.good_sleep sleep.good_sleep
json.bath_before_bed sleep.bath_before_bed
json.dark_room sleep.dark_room
json.cool_room sleep.cool_room
json.clock_visible sleep.clock_visible
json.electronics_in_room sleep.electronics_in_room
json.lie_in_bed sleep.lie_in_bed
json.room_temperature sleep.room_temperature
json.user_id sleep.user_id
if sleep.end_time
  json.time_in_bed sleep.time_in_bed
  json.hours_in_bed sleep.hours_in_bed
end

json.alcohol do
  if sleep.alcohol
    json.partial! sleep.alcohol, partial: 'api/alcohols/alcohol', as: :alcohol
  else
    json.amount 0
    json.time 0
    json.increased_impact 0
  end
end

json.caffeine do
  if sleep.caffeine
    json.partial! sleep.caffeine, partial: 'api/caffeines/caffeine', as: :caffeine
  else
    json.amount 0
    json.time 0
    json.increased_impact 0
  end
end

json.late_meal do
  if sleep.late_meal
    json.partial! sleep.late_meal, partial: 'api/late_meals/late_meal', as: :late_meal
  else
    json.amount 0
    json.time 0
    json.increased_impact 0
  end
end

json.morning_sun do
  if sleep.morning_sun
    json.partial! sleep.morning_sun, partial: 'api/morning_suns/morning_sun', as: :morning_sun
  else
    json.amount 0
    json.time 0
    json.increased_impact 0
  end
end

json.exercises do
  if sleep.exercises
    json.array! sleep.exercises.each do |exercise|
      json.id exercise.id
      json.duration exercise.duration
      json.time exercise.time
    end  
  end
end

json.naps do
  json.array! sleep.naps.each do |nap|
    json.id nap.id
    json.duration nap.duration
    json.time nap.time
  end  
end

json.relax do
  if sleep.relax
    json.partial! sleep.relax, partial: 'api/relaxes/relax', as: :relax
  else
    json.amount 0
    json.time 0
    json.increased_impact 0
  end
end