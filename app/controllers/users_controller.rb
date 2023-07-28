class UsersController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource
  def index
    @members = User.accessible_by(current_ability)
    render json: @members
  end

  def show
    render json: @user
  end

  def create
    if current_user.role.downcase == 'manager' && params[:user][:role].downcase == 'admin'
      render json: 'You are not authorized.'
      return
    end
    @member = User.new(user_params)
    if @member.save
      render json: 'Member has been created successfully', status: :ok
    else
      render json: 'Faild to save member into database. Please check your body request.', status: :unprocessable_entity
    end
  end

  def update
    if @user.update(user_params)
      render json: 'Member has been updated successfully', status: :ok
    else
      render json: 'Faild to update member. Please check your body request.', status: :unprocessable_entity
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
