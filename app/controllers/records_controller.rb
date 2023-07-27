class RecordsController < ApplicationController
  load_and_authorize_resource
  def index
    @records = Record.accessible_by(current_ability)
    render json: @records
  end

  def show
    render json: @record
  end

  def create
    @user = User.find(params[:user_id])
    @record = Record.new(record_params)
    @record.user = @user
    if @record.save
      render json: 'Record has been created successfully', status: :ok
    else
      render json: 'Faild to save record into database. Please check your body request.', status: :unprocessable_entity
    end
  end

  def update
    if @record.update(record_params)
      render json: 'Record has been updated successfully', status: :ok
    else
      render json: 'Faild to update record. Please check your body request.', status: :unprocessable_entity
    end
  end

  def destroy
    if @record.destroy
      render json: 'The record has been removed successfully.'
    else
      render json: 'Record id is wrong, or the record is already removed.'
    end
  end

  private

  def record_params
    params.require(:record).permit(:time, :date, :distance)
  end
end
