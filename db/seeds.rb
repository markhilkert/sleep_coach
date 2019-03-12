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

Relax.new(
          sleep_id: 1,
          duration: 25.5,
          time: Time.parse("8:45pm")
          )