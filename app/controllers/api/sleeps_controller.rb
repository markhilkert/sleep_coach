class Api::SleepsController < ApplicationController
  before_action :authenticate_user

  def index
    @sleeps = current_user.sleeps
    render 'index.json.jbuilder'
  end

  def show
    @sleep = Sleep.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    if @sleep = Sleep.create(sleep_params)
      render 'show.json.jbuilder'
    else
      render json: { errors: @sleep.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @sleep = Sleep.find(params[:id])

    if @sleep.update(sleep_params)
      render 'show.json.jbuilder'
    else
      render json: {errors: @sleep.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    Sleep.find(params[:id]).destroy!
    render json: {message: "Successfully removed sleep."}
  end

  def destroy_last
    sleep = current_user.sleeps.last.destroy!
    render json: {message: "Successfully removed sleep."}
  end

  # TODO: move logic to model
  def start
    # Josh Note: Want to make sure you aren't starting multiple sleeps. So, first have this do a get call, read the last sleep, and only run if the last sleep has an end time. For the end button, make sure the last sleep has a start time but no end time.
    # TODO: is ^^^ already implemented or does it need to be?
    @sleep = current_user.sleeps.new(
      user_id: current_user.id,
      start_time: Time.now
    )

    if @sleep.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @sleep.errors.full_messages}, status: :unprocessable_entity
    end
  end

  # TODO: move logic to model
  def end_good
    @sleep = current_user.sleeps.last
    @sleep.end_time = Time.now
    @sleep.good_sleep = true

    if @sleep.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @sleep.errors.full_messages}, status: :unprocessable_entity
    end
  end

  # TODO: move logic to model
  def end_bad
    @sleep = current_user.sleeps.last
    @sleep.end_time = Time.now
    @sleep.good_sleep = false

    if @sleep.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @sleep.errors.full_messages}, status: :unprocessable_entity
    end
  end

  # TODO: ... what does this do?
  # Anyway should probably move this logic to....
  # the model!
  def toggle
    sleep = current_user.sleeps.last

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

  private
  def sleep_params
    params.require(:sleep).permit(
      :user_id,
      :start_time,
      :end_time,
      :good_sleep,
      :bath_before_bed,
      :dark_room,
      :cool_room,
      :clock_visible,
      :electronics_in_room,
      :lie_in_bed,
      :room_temperature
    )
  end
end
