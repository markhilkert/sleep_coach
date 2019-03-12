class Api::NapsController < ApplicationController

  def index
    @naps = Nap.all 
    render 'index.json.jbuilder'
  end

  def create
    @nap = Nap.new(
                    sleep_id: params[:sleep_id],
                    duration: params[:duration],
                    time: params[:time]
                    )
    
    if @nap.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @nap.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @nap = Nap.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @nap = Nap.find(params[:id])

    @nap.time = params[:time] || @nap.time
    @nap.duration = params[:duration] || @nap.duration

    if @nap.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @nap.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    nap = Nap.find(params[:id])
    nap.destroy
    render json: {message: "Successfully removed nap."}
  end

end
