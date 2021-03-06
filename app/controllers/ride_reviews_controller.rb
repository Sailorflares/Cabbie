class RideReviewsController < ApplicationController

  before_action :authorize, only: [:new, :create]

  def new
    @user = User.find(params[:user_id])
    @ride_review = RideReview.new
  end

  def create
    @user = User.find(session[:user_id])
    @driver = Driver.find(params[:ride_review][:driver_id])
    @ride_review = @user.ride_reviews.create(ride_review_params)

    if @ride_review.errors.any?
      redirect_to driver_path(@driver), notice: "Please give your driver a rating and a review of at least 10 characters."
    else
      redirect_to driver_path(@driver)
    end
  end

  def show
    @ride_review = RideReview.find(params[:id])
  end

  private

  def ride_review_params
    params.require(:ride_review).permit(:star_rating, :comments, :driver_id, :uber)
  end

end
