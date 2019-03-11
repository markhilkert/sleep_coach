class Api::AlcoholsController < ApplicationController

  def index
    @alcohols = Alcohol.all 
    render 'index.json.jbuilder'
  end

  def create
    @alcohol = Alcohol.new(
                        sleep_id: params[:sleep_id],
                        amount: params[:amount],
                        time: params[:time],
                        increased_impact: params[:increased_impact],
                        type: "alcohol"
                        )
    
    if @alcohol.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @alcohol.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @alcohol = Alcohol.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @alcohol = Alcohol.find(params[:id])

    @alcohol.sleep_id = params[:sleep_id] || @alcohol.sleep_id
    @alcohol.amount = params[:amount] || @alcohol.amount
    @alcohol.time = params[:time] || @alcohol.time
    @alcohol.increased_impact = params[:increased_impact] || @alcohol.increased_impact

    if @alcohol.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @alcohol.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    alcohol = Alcohol.find(params[:id])
    alcohol.destroy
    render json: {message: "Successfully removed alcohol."}
  end

end
