class Api::NapsController < ApplicationController

  def index
    @nap = Nap.all 
    render 'index.json.jbuilder'
  end

  def create
    @nap = Nap.new(
                        sleep_id: params[:sleep_id],
                        amount: params[:amount],
                        time: params[:time],
                        increased_impact: params[:increased_impact],
                        type: "nap"
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

    @nap.sleep_id = params[:sleep_id] || @nap.sleep_id
    @nap.amount = params[:amount] || @nap.amount
    @nap.time = params[:time] || @nap.time
    @nap.increased_impact = params[:increased_impact] || @nap.increased_impact

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
