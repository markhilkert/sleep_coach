class Api::LateMealsController < ApplicationController
  # before_action :authenticate_user

  def index
    @late_meals = LateMeal.all 
    render 'index.json.jbuilder'
  end

  def create
    @late_meal = LateMeal.new(
                        sleep_id: params[:sleep_id],
                        amount: params[:amount],
                        time: params[:time],
                        increased_impact: params[:increased_impact]
                        )
    
    if @late_meal.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @late_meal.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @late_meal = LateMeal.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @late_meal = LateMeal.find(params[:id])

    @late_meal.sleep_id = params[:sleep_id] || @late_meal.sleep_id
    @late_meal.amount = params[:amount] || @late_meal.amount
    @late_meal.time = params[:time] || @late_meal.time
    @late_meal.increased_impact = params[:increased_impact] || @late_meal.increased_impact

    if @late_meal.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @late_meal.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    late_meal = LateMeal.find(params[:id])
    late_meal.destroy
    render json: {message: "Successfully removed late meal."}
  end

end
