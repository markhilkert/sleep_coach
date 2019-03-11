class Api::RelaxesController < ApplicationController

  def index
    @relaxes = Relax.all 
    render 'index.json.jbuilder'
  end

  def create
    @relax = Relax.new(
                        sleep_id: params[:sleep_id],
                        amount: params[:amount],
                        time: params[:time],
                        increased_impact: params[:increased_impact],
                        type: "relax"
                        )
    
    if @relax.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @relax.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @relax = Relax.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @relax = Relax.find(params[:id])

    @relax.sleep_id = params[:sleep_id] || @relax.sleep_id
    @relax.amount = params[:amount] || @relax.amount
    @relax.time = params[:time] || @relax.time
    @relax.increased_impact = params[:increased_impact] || @relax.increased_impact

    if @relax.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @relax.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    relax = Relax.find(params[:id])
    relax.destroy
    render json: {message: "Successfully removed relaxation."}
  end

end
