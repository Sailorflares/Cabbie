class DriversController < ApplicationController

  def show
    @driver = Driver.find_by(params[:medallion_number => @driver.medallion_number])
  end


end
