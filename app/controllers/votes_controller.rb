class VotesController < ApplicationController

  def new
    @vote = Vote.new
  end

  def create
    @user = User.find(session[:user_id])
    @vote = @user.votes.build(vote_params)
    if @vote.save
      flash[:notice] = "saved your review of this ride's review reveiweowejaiwej" 
      redirect_to driver_path(@vote.ride_review.driver)
    else
      flash[:error] = "no one wants to hear your opinion" 
      redirect_to driver_path(@vote.ride_review.driver)
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:vote, :ride_review_id)
  end

end
