user = User.create!(
                    name: "mark",
                    email: "mark@gmail.com",
                    )

sleep = Sleep.create!(
                      user_id: user.id,
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
                sleep_id: sleep.id,
                amount: 4,
                time: Time.parse("8:30pm"),
                increased_impact: false
                )

Caffeine.create!(
                  sleep_id: sleep.id,
                  amount: 3,
                  time: Time.parse("3pm"),
                  increased_impact: false
                  )

Exercise.create!(
                  sleep_id: sleep.id,
                  duration: 2,
                  time: Time.parse("7pm")
                  )

LateMeal.create!(
                sleep_id: sleep.id,
                amount: 1,
                time: Time.parse("9pm"),
                increased_impact: true
                )

MorningSun.create!(
                  sleep_id: sleep.id,
                  duration: 2.5,
                  time: Time.parse("9am")
                  )

Nap.create!(
            sleep_id: sleep.id,
            duration: 20.5,
            time: Time.parse("12pm")
            )

Relax.create!(
              sleep_id: sleep.id,
              duration: 25.5,
              time: Time.parse("8:45pmr")
              )

# Sleep 2

sleep_2 = Sleep.create!(
                        user_id: user.id,
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
                sleep_id: sleep_2.id,
                amount: 4,
                time: Time.parse("8:45pm"),
                increased_impact: false
                )

Caffeine.create!(
                  sleep_id: sleep_2.id,
                  amount: 3,
                  time: Time.parse("2pm"),
                  increased_impact: false
                  )

Exercise.create!(
                  sleep_id: sleep_2.id,
                  duration: 2,
                  time: Time.parse("8pm")
                  )

Relax.create!(
              sleep_id: sleep_2.id,
              duration: 30,
              time: Time.parse("9pm")
              )


### Sleep 3

sleep_3 = Sleep.create!(
                        user_id: user.id,
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
                sleep_id: sleep_3.id,
                amount: 4,
                time: Time.parse("8:30pm"),
                increased_impact: false
                )

Caffeine.create!(
                  sleep_id: sleep_3.id,
                  amount: 3,
                  time: Time.parse("3pm"),
                  increased_impact: false
                  )

Exercise.create!(
                  sleep_id: sleep_3.id,
                  duration: 2,
                  time: Time.parse("7pm")
                  )

LateMeal.create!(
                sleep_id: sleep_3.id,
                amount: 1,
                time: Time.parse("9pm"),
                increased_impact: false
                )

MorningSun.create!(
                  sleep_id: sleep_3.id,
                  duration: 2.5,
                  time: Time.parse("9am")
                  )

Nap.create!(
            sleep_id: sleep_3.id,
            duration: 20.5,
            time: Time.parse("12pm")
            )

Relax.create!(
              sleep_id: sleep_3.id,
              duration: 25.5,
              time: Time.parse("8:30pm")
              )

### Sleep 4

sleep_4 = Sleep.create!(
                        user_id: user.id,
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
                  sleep_id: sleep_4.id,
                  amount: 2,
                  time: Time.parse("2:30pm"),
                  increased_impact: false
                  )

Exercise.create!(
                  sleep_id: sleep_4.id,
                  duration: 50,
                  time: Time.parse("7:30pm")
                  )

LateMeal.create!(
                sleep_id: sleep_4.id,
                amount: 1,
                time: Time.parse("8:30"),
                increased_impact: true
                )

MorningSun.create!(
                  sleep_id: sleep_4.id,
                  duration: 2.5,
                  time: Time.parse("9am")
                  )

Nap.create!(
            sleep_id: sleep_4.id,
            duration: 20.5,
            time: Time.parse("12pm")
            )

Relax.create!(
              sleep_id: sleep_4.id,
              duration: 30.5,
              time: Time.parse("8:30pm")
              )

### Sleep 5

sleep_5 = Sleep.create!(
                        user_id: user.id,
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
                sleep_id: sleep_5.id,
                amount: 1,
                time: Time.parse("6:15pm"),
                increased_impact: false
                )

Caffeine.create!(
                  sleep_id: sleep_5.id,
                  amount: 2,
                  time: Time.parse("2:30pm"),
                  increased_impact: false
                  )

Exercise.create!(
                  sleep_id: sleep_5.id,
                  duration: 30,
                  time: Time.parse("7pm")
                  )

LateMeal.create!(
                sleep_id: sleep_5.id,
                amount: 1,
                time: Time.parse("9pm"),
                increased_impact: false
                )

MorningSun.create!(
                  sleep_id: sleep_5.id,
                  duration: 22.5,
                  time: Time.parse("9am")
                  )


### Sleep 6

sleep_6 = Sleep.create!(
                        user_id: user.id,
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
                sleep_id: sleep_6.id,
                amount: 1,
                time: Time.parse("6:15pm"),
                increased_impact: false
                )

Caffeine.create!(
                  sleep_id: sleep_6.id,
                  amount: 2.5,
                  time: Time.parse("3pm"),
                  increased_impact: false
                  )

LateMeal.create!(
                sleep_id: sleep_6.id,
                amount: 1,
                time: Time.parse("8:30pm"),
                increased_impact: true
                )


### Sleep 7

sleep_7 = Sleep.create!(
                        user_id: user.id,
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
                  sleep_id: sleep_7.id,
                  amount: 4,
                  time: Time.parse("6pm"),
                  increased_impact: false
                  )

MorningSun.create!(
                  sleep_id: sleep_7.id,
                  duration: 15,
                  time: Time.parse("9am")
                  )

Sleep.create!(
              user_id: user.id,
              start_time: DateTime.new(2019,03,18,22,00),
              end_time: DateTime.new(2019,03,19,7,45),
              good_sleep: true,
              bath_before_bed: false,
              dark_room: true,
              cool_room: true,
              clock_visible: false,
              electronics_in_room: true,
              lie_in_bed: false,
              room_temperature: 70
              )
Sleep.create!(
              user_id: user.id,
              start_time: DateTime.new(2019,03,19,22,25),
              end_time: DateTime.new(2019,03,20,7,45),
              good_sleep: true,
              bath_before_bed: false,
              dark_room: true,
              cool_room: true,
              clock_visible: false,
              electronics_in_room: true,
              lie_in_bed: false,
              room_temperature: 70
              )
Sleep.create!(
              user_id: user.id,
              start_time: DateTime.new(2019,03,20,23,59),
              end_time: DateTime.new(2019,03,21,5,45),
              good_sleep: false,
              bath_before_bed: false,
              dark_room: true,
              cool_room: true,
              clock_visible: false,
              electronics_in_room: true,
              lie_in_bed: false,
              room_temperature: 70
              )
Sleep.create!(
              user_id: user.id,
              start_time: DateTime.new(2019,03,21,22,45),
              end_time: DateTime.new(2019,03,22,6,45),
              good_sleep: true,
              bath_before_bed: false,
              dark_room: true,
              cool_room: true,
              clock_visible: false,
              electronics_in_room: true,
              lie_in_bed: false,
              room_temperature: 70
              )
Sleep.create!(
              user_id: user.id,
              start_time: DateTime.new(2019,03,23,22,00),
              end_time: DateTime.new(2019,03,24,6,22),
              good_sleep: false,
              bath_before_bed: false,
              dark_room: true,
              cool_room: true,
              clock_visible: false,
              electronics_in_room: true,
              lie_in_bed: false,
              room_temperature: 70
              )
