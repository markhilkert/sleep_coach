class Api::CaffeinesController < ApplicationController
  before_action :authenticate_user

  def index
      @caffeines = Caffeine.all 
      render 'index.json.jbuilder'
  end

    def create
      @caffeine = Caffeine.new(
                          sleep_id: params[:sleep_id],
                          amount: params[:amount],
                          time: params[:time],
                          increased_impact: params[:increased_impact]
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
      @caffeine.amount = params[:amount] || @caffeine.amount
      @caffeine.time = params[:time] || @caffeine.time
      @caffeine.increased_impact = params[:increased_impact] || @caffeine.increased_impact

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
