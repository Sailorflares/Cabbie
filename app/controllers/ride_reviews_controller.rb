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
    @user = User.find(params[:id])
    @ride_review = @user.ride_reviews.create(ride_review_params)
    redirect_to @ride_review
  end

  def show
    @ride_review = RideReview.find(params[:id])
  end

  private

  def ride_review_params
    params.require(:ride_review).permit(:driver_id, :star_rating, :comments)
  end

end
