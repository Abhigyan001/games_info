class VotesController < ApplicationController
  def create
    @vote = current_user.votes.new(vote_params)
    if @vote.save
      redirect_back fallback_location: '/', notice: 'You voted for an article.'
    else
      redirect_back fallback_location: '/', alert: 'There was a problem, please try again.'
    end
  end

  def destroy
    vote = Vote.find_by(user: current_user, article_id: params[:article_id])
    if vote
      vote.destroy
      redirect_back fallback_location: '/', notice: 'You unvoted an article.'
    else
      redirect_back fallback_location: '/', alert: 'There was a problem, please try again.'
    end
  end
  
  private

  def vote_params
    params.permit(:article_id)
  end
end
