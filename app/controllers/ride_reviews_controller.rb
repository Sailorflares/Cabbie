class RideReviewsController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @ride_review = RideReview.new
  end

  def search
    @user = User.find(params[:user_id])
    @driver = Driver.find_by(:medallion_number => params[:medallion_number])
    @ride_review = RideReview.new
    render 'new'
  end

  def create
    # raise params.inspect
    @user = User.find(params[:user_id])
    @driver = Driver.find(params[:ride_review][:driver_id])
    @ride_review = @user.ride_reviews.create(ride_review_params)
    # binding.
    redirect_to driver_path(@driver)
  end

  def show
    @ride_review = RideReview.find(params[:id])
  end

  private

  def ride_review_params
    params.require(:ride_review).permit(:star_rating, :comments, :driver_id)
  end

end
