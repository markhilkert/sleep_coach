class Api::CaffeinesController < ApplicationController

  def index
    @caffeine = Caffeine.all 
    render 'index.json.jbuilder'
  end

  def create
    @caffeine = Caffeine.new(
                        sleep_id: params[:sleep_id],
                        duration: params[:duration],
                        type: "caffeine"
                        )
    
    if @caffeine.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @caffeine.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @caffeine = Caffeine.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @caffeine = Caffeine.find(params[:id])

    @caffeine.sleep_id = params[:sleep_id] || @caffeine.sleep_id
    @caffeine.duration = params[:duration] || @caffeine.duration

    if @caffeine.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @caffeine.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    caffeine = Caffeine.find(params[:id])
    caffeine.destroy
    render json: {message: "Successfully removed caffeine."}
  end

end
