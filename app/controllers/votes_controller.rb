class VotesController < ApplicationController

  def new
    @vote = Vote.new
  end

  def create
    @user = User.find(session[:user_id])
    @vote = @user.votes.build(vote_params)
    if @vote.save
      redirect_to driver_path(@vote.ride_review.driver)
    else
      flash[:notice] = "Sorry, your opinion doesn't seem to matter to anyone." 
      redirect_to driver_path(@vote.ride_review.driver)
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:value_of_votes, :ride_review_id)
  end

end
