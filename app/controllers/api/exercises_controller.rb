class Api::ExercisesController < ApplicationController
  before_action :authenticate_user
  
  def index
    @exercises = Exercise.all 
    render 'index.json.jbuilder'
  end

  def create
    @exercise = Exercise.new(
                        sleep_id: params[:sleep_id],
                        duration: params[:duration],
                        time: params[:time]
                        )
    
    if @exercise.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @exercise.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @exercise = Exercise.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @exercise = Exercise.find(params[:id])

    @exercise.time = params[:time] || @exercise.time
    @exercise.duration = params[:duration] || @exercise.duration

    if @exercise.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @exercise.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    exercise = Exercise.find(params[:id])
    exercise.destroy
    render json: {message: "Successfully removed exercise."}
  end
end
