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
# json.user_id sleep.user_id

json.alcohols do
  json.array! sleep.alcohols.each do |alcohol|
    json.id alcohol.id
    json.amount alcohol.amount
    json.time alcohol.time
    json.increased_impact alcohol.increased_impact
  end  
end

json.caffeines do
  json.array! sleep.caffeines.each do |caffeine|
    json.id caffeine.id
    json.amount caffeine.amount
    json.time caffeine.time
    json.increased_impact caffeine.increased_impact
  end  
end

json.late_meals do
  json.array! sleep.late_meals.each do |late_meal|
    json.id late_meal.id
    json.amount late_meal.amount
    json.time late_meal.time
    json.increased_impact late_meal.increased_impact
  end  
end

json.morning_suns do
  json.array! sleep.morning_suns.each do |morning_sun|
    json.id morning_sun.id
    json.duration morning_sun.duration
    json.time morning_sun.time
  end  
end

json.exercises do
  json.array! sleep.exercises.each do |exercise|
    json.id exercise.id
    json.duration exercise.duration
    json.time exercise.time
  end  
end

json.naps do
  json.array! sleep.naps.each do |nap|
    json.id nap.id
    json.duration nap.duration
    json.time nap.time
  end  
end

json.relaxes do
  json.array! sleep.relaxes.each do |relax|
    json.id relax.id
    json.duration relax.duration
    json.time relax.time
  end  
end