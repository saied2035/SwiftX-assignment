class UsersController < ApplicationController
  load_and_authorize_resource
  def destroy
    if @user.destroy
      render json: 'The account has been removed successfully.'
    else
      render json: 'Account id is wrong, or the account is already removed.'
    end
  end
end
