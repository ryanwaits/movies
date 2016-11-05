class ReviewsController < ApplicationController
  def new
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.build(review_params)
    if @review.save
      redirect_to @movie
    end
  end

  private

  def review_params
    params.require(:review).permit(:body)
  end
end
