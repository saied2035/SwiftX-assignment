class UsersController < ApplicationController
  load_and_authorize_resource
  def index
    @users = User.accessible_by(current_ability)
    render json: @records
  end

  def show
    render json: @user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: 'User has been created successfully', status: :ok
    else
      render json: 'Faild to save user into database. Please check your body request.', status: :unprocessable_entity
    end
  end

  def update
    if @user.update(user_params)
      render json: 'User has been updated successfully', status: :ok
    else
      render json: 'Faild to update user. Please check your body request.', status: :unprocessable_entity
    end
  end
  def destroy
    if @user.destroy
      render json: 'The account has been removed successfully.'
    else
      render json: 'Account id is wrong, or the account is already removed.'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :role, :email, :password, :password_confirmation)
  end
end
