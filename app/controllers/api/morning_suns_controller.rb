class Api::MorningSunsController < ApplicationController

  def index
    @morning_suns = MorningSun.all 
    render 'index.json.jbuilder'
  end

  def create
    @morning_sun = MorningSun.new(
                        sleep_id: params[:sleep_id],
                        duration: params[:duration],
                        time: params[:time],
                        type: "morning_sun"
                        )
    
    if @morning_sun.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @morning_sun.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @morning_sun = MorningSun.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @morning_sun = MorningSun.find(params[:id])

    @morning_sun.time = params[:time] || @morning_sun.time
    @morning_sun.duration = params[:duration] || @morning_sun.duration

    if @morning_sun.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @morning_sun.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    morning_sun = MorningSun.find(params[:id])
    morning_sun.destroy
    render json: {message: "Successfully removed morning sun exposure."}
  end

end
