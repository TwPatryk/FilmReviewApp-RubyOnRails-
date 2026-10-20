class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def create
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.build(review_params)
    @review.user = current_user

    if @review.save
      redirect_to @movie, notice: "Recenzja dodana."
    else
      redirect_to @movie, alert: "Nie udało się dodać recenzji."
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to @review.movie, notice: "Recenzja usunięta."
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end