class DriversController < ApplicationController

  def show
    @driver = Driver.find(params[:id])
    @ride_review = RideReview.new
    if current_user
      @user = User.find(session[:user_id])
    end  
  end

  def search
    @driver = Driver.find_by(:medallion_number => params[:medallion_number])
    if @driver
      redirect_to driver_path(@driver)
    else
      redirect_to root_path
      flash.now[:error] = "Could not save client"
    end
  end

end
