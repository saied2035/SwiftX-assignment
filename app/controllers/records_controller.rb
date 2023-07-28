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
  	if (current_user.id.to_i == params[:member_id].to_i) == false && current_user.role.downcase == "manager"
      render json: "You are not authorized."
      return
    end 
    @member = User.find(params[:member_id])
    date = params[:record][:date].to_date
    time = "#{params[:record][:time][:hours]}:#{params[:record][:time][:minutes]}"
    distance = params[:record][:distance].to_f
    speed = distance / ( params[:record][:time][:hours] + (params[:record][:time][:minutes] / 60.to_f))
    @record = Record.new(time: time, distance: distance, date: date, member: @member, speed: speed)
    if @record.save
      render json: 'Record has been created successfully', status: :ok
    else
      render json: 'Faild to save record into database. Please check your body request.', status: :unprocessable_entity
    end
  end

  def update
    date = params[:record][:date].to_date
    time = "#{params[:record][:time][:hours]}:#{params[:record][:time][:minutes]}"
    distance = params[:record][:distance].to_f
    speed = distance/( params[:record][:time][:hours] + (params[:record][:time][:minutes] / 60.to_f))
    if @record.update(time: time, distance: distance, date: date, speed: speed)
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
    params.require(:record).permit(:date, :distance, {:time => [:hours, :minutes] })
  end
end
