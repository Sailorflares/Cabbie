class DriversController < ApplicationController

  def show
    @driver = Driver.find(params[:id])
    @user = User.find(session[:user_id])
    @ride_review = RideReview.new
  end

  def search
    # @user = User.find(session[:user_id])
    
    @driver = Driver.find_by(:medallion_number => params[:medallion_number])
    # @ride_review = RideReview.new
    redirect_to driver_path(@driver)
  end

end
