class Api::SleepsController < ApplicationController
  def index
    @sleeps = Sleep.all 
    render 'index.json.jbuilder'
  end

  def create
    @sleep = Sleep.new(
                        user_id: current_user.id,
                        start_time: params[:start_time],
                        end_time: params[:end_time],
                        good_sleep: params[:good_sleep],
                        bath_before_bed: params[:bath_before_bed],
                        dark_room: params[:dark_room],
                        cool_room: params[:cool_room],
                        clock_visible: params[:clock_visible],
                        electronics_in_room: params[:electronics_in_room],
                        lie_in_bed: params[:lie_in_bed],
                        room_temperature: params[:room_temperature]
                        )
    
    if @sleep.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @sleep.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @sleep = Sleep.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @sleep = Sleep.find(params[:id])

    sleep.start_time = params[:start_time] || @sleep.start_time
    sleep.end_time = params[:end_time] || @sleep.end_time
    sleep.good_sleep = params[:good_sleep] || @sleep.good_sleep
    sleep.bath_before_bed = params[:bath_before_bed] || @sleep.bath_before_bed
    sleep.dark_room = params[:dark_room] || @sleep.dark_room
    sleep.cool_room = params[:cool_room] || @sleep.cool_room
    sleep.clock_visible = params[:clock_visible] || @sleep.clock_visible
    sleep.electronics_in_room = params[:electronics_in_room] || @sleep.electronics_in_room
    sleep.lie_in_bed = params[:lie_in_bed] || @sleep.lie_in_bed
    sleep.room_temperature = params[:room_temperature] || @sleep.room_temperature

    if @sleep.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @sleep.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    sleep = Sleep.find(params[:id])
    sleep.destroy
    render json: {message: "Successfully removed sleep."}
  end

  def start
    # Josh Note: Want to make sure you aren't starting multiple sleeps. So, first have this do a get call, read the last sleep, and only run if the last sleep has an end time. For the end button, make sure the last sleep has a start time but no end time.
    @sleep = Sleep.new(
                        user_id: current_user.id,
                        start_time: Time.now
                      )

    if @sleep.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @sleep.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def end_good
    @sleep = Sleep.last
    @sleep.end_time = Time.now
    @sleep.good_sleep = true

    if @sleep.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @sleep.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def end_bad
    @sleep = Sleep.last
    @sleep.end_time = Time.now
    @sleep.good_sleep = false

    if @sleep.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @sleep.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def toggle
    sleep = Sleep.last

    if sleep.end_time
      @sleep = Sleep.new(
                          user_id: current_user.id,
                          start_time: Time.now
                        )
    else
      @sleep = sleep
      @sleep.end_time = Time.now
    end

    if @sleep.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @sleep.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
