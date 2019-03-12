class Api::RelaxesController < ApplicationController

  def index
    @relaxes = Relax.all 
    render 'index.json.jbuilder'
  end

  def create
    @relax = Relax.new(
                        sleep_id: params[:sleep_id],
                        duration: params[:duration],
                        time: params[:time]
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

    @relax.time = params[:time] || @relax.time
    @relax.duration = params[:duration] || @relax.duration

    if @relax.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @relax.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    relax = Relax.find(params[:id])
    relax.destroy
    render json: {message: "Successfully removed relax."}
  end

end
