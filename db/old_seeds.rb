User.create!(
              name: "mark",
              email: "mark@gmail.com",
              password: "password",
              password_confirmation: "password"
              )

Sleep.create!(
              user_id: 1,
              start_time: DateTime.new(2019,03,11,21,45),
              end_time: DateTime.new(2019,03,12,07,30),
              good_sleep: true,
              bath_before_bed: false,
              dark_room: true,
              cool_room: true,
              clock_visible: false,
              electronics_in_room: true,
              lie_in_bed: false,
              room_temperature: 68
              )

Alcohol.create!(
                sleep_id: 1,
                amount: 4,
                time: Time.parse("8:30pm"),
                increased_impact: false
                )

Caffeine.create!(
                  sleep_id: 1,
                  amount: 3,
                  time: Time.parse("3pm"),
                  increased_impact: false
                  )

Exercise.create!(
                  sleep_id: 1,
                  duration: 2,
                  time: Time.parse("7pm")
                  )

LateMeal.create!(
                sleep_id: 1,
                amount: 1,
                time: Time.parse("9pm"),
                increased_impact: true
                )

MorningSun.create!(
                  sleep_id: 1,
                  duration: 2.5,
                  time: Time.parse("9am")
                  )

Nap.create!(
            sleep_id: 1,
            duration: 20.5,
            time: Time.parse("12pm")
            )

Relax.create!(
              sleep_id: 1,
              duration: 25.5,
              time: Time.parse("8:45pmr")
              )

# Sleep 2

Sleep.create!(
              user_id: 1,
              start_time: DateTime.new(2019,03,12,21,30),
              end_time: DateTime.new(2019,03,13,07,45),
              good_sleep: true,
              bath_before_bed: true,
              dark_room: true,
              cool_room: true,
              clock_visible: false,
              electronics_in_room: true,
              lie_in_bed: false,
              room_temperature: 70
              )

Alcohol.create!(
                sleep_id: 2,
                amount: 4,
                time: Time.parse("8:45pm"),
                increased_impact: false
                )

Caffeine.create!(
                  sleep_id: 2,
                  amount: 3,
                  time: Time.parse("2pm"),
                  increased_impact: false
                  )

Exercise.create!(
                  sleep_id: 2,
                  duration: 2,
                  time: Time.parse("8pm")
                  )

Relax.create!(
              sleep_id: 2,
              duration: 30,
              time: Time.parse("9pm")
              )


### Sleep 3

Sleep.create!(
              user_id: 1,
              start_time: DateTime.new(2019,03,13,21,45),
              end_time: DateTime.new(2019,03,14,07,30),
              good_sleep: true,
              bath_before_bed: false,
              dark_room: true,
              cool_room: true,
              clock_visible: false,
              electronics_in_room: true,
              lie_in_bed: false,
              room_temperature: 68
              )

Alcohol.create!(
                sleep_id: 3,
                amount: 4,
                time: Time.parse("8:30pm"),
                increased_impact: false
                )

Caffeine.create!(
                  sleep_id: 3,
                  amount: 3,
                  time: Time.parse("3pm"),
                  increased_impact: false
                  )

Exercise.create!(
                  sleep_id: 3,
                  duration: 2,
                  time: Time.parse("7pm")
                  )

LateMeal.create!(
                sleep_id: 3,
                amount: 1,
                time: Time.parse("9pm"),
                increased_impact: false
                )

MorningSun.create!(
                  sleep_id: 3,
                  duration: 2.5,
                  time: Time.parse("9am")
                  )

Nap.create!(
            sleep_id: 3,
            duration: 20.5,
            time: Time.parse("12pm")
            )

Relax.create!(
              sleep_id: 3,
              duration: 25.5,
              time: Time.parse("8:30pm")
              )

### Sleep 4

Sleep.create!(
              user_id: 1,
              start_time: DateTime.new(2019,03,14,21,40),
              end_time: DateTime.new(2019,03,15,07,25),
              good_sleep: false,
              bath_before_bed: true,
              dark_room: true,
              cool_room: false,
              clock_visible: false,
              electronics_in_room: true,
              lie_in_bed: false,
              room_temperature: 75
              )


Caffeine.create!(
                  sleep_id: 4,
                  amount: 2,
                  time: Time.parse("2:30pm"),
                  increased_impact: false
                  )

Exercise.create!(
                  sleep_id: 4,
                  duration: 50,
                  time: Time.parse("7:30pm")
                  )

LateMeal.create!(
                sleep_id: 4,
                amount: 1,
                time: Time.parse("8:30"),
                increased_impact: true
                )

MorningSun.create!(
                  sleep_id: 4,
                  duration: 2.5,
                  time: Time.parse("9am")
                  )

Nap.create!(
            sleep_id: 4,
            duration: 20.5,
            time: Time.parse("12pm")
            )

Relax.create!(
              sleep_id: 4,
              duration: 30.5,
              time: Time.parse("8:30pm")
              )

### Sleep 5

Sleep.create!(
              user_id: 1,
              start_time: DateTime.new(2019,03,15,22,15),
              end_time: DateTime.new(2019,03,16,07,22),
              good_sleep: true,
              bath_before_bed: false,
              dark_room: true,
              cool_room: true,
              clock_visible: false,
              electronics_in_room: true,
              lie_in_bed: false,
              room_temperature: 68
              )

Alcohol.create!(
                sleep_id: 5,
                amount: 1,
                time: Time.parse("6:15pm"),
                increased_impact: false
                )

Caffeine.create!(
                  sleep_id: 5,
                  amount: 2,
                  time: Time.parse("2:30pm"),
                  increased_impact: false
                  )

Exercise.create!(
                  sleep_id: 5,
                  duration: 30,
                  time: Time.parse("7pm")
                  )

LateMeal.create!(
                sleep_id: 5,
                amount: 1,
                time: Time.parse("9pm"),
                increased_impact: false
                )

MorningSun.create!(
                  sleep_id: 5,
                  duration: 22.5,
                  time: Time.parse("9am")
                  )


### Sleep 6

Sleep.create!(
              user_id: 1,
              start_time: DateTime.new(2019,03,16,21,30),
              end_time: DateTime.new(2019,03,17,07,35),
              good_sleep: false,
              bath_before_bed: false,
              dark_room: true,
              cool_room: false,
              clock_visible: false,
              electronics_in_room: true,
              lie_in_bed: false,
              room_temperature: 75
              )

Alcohol.create!(
                sleep_id: 6,
                amount: 1,
                time: Time.parse("6:15pm"),
                increased_impact: false
                )

Caffeine.create!(
                  sleep_id: 6,
                  amount: 2.5,
                  time: Time.parse("3pm"),
                  increased_impact: false
                  )

LateMeal.create!(
                sleep_id: 6,
                amount: 1,
                time: Time.parse("8:30pm"),
                increased_impact: true
                )


### Sleep 7

Sleep.create!(
              user_id: 1,
              start_time: DateTime.new(2019,03,17,23,15),
              end_time: DateTime.new(2019,03,18,8,45),
              good_sleep: false,
              bath_before_bed: false,
              dark_room: true,
              cool_room: true,
              clock_visible: false,
              electronics_in_room: true,
              lie_in_bed: false,
              room_temperature: 70
              )


Caffeine.create!(
                  sleep_id: 7,
                  amount: 4,
                  time: Time.parse("6pm"),
                  increased_impact: false
                  )

MorningSun.create!(
                  sleep_id: 7,
                  duration: 15,
                  time: Time.parse("9am")
                  )