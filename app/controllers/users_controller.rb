class UsersController < ApplicationController
  def show
    @user = current_user
    render 'show.json.jbuilder'
  end

  def create
    if User.create(user_params)
      render json: { message: 'User created successfully' }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  private
  def user_params
    params.require(:user).permit(
      :name,
      :email
    )
  end
end
