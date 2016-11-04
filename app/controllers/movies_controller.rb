class MoviesController < ApplicationController
  def index
    @movies = Movie.all.order('created_at DESC')
  end

  def show
  end

  def new
  end

  def create
    @movie = current_user.movies.build(movie_params)
    if @movie.save
      redirect_to root_path
    else
      render :new
    end
  end

  def new
  end

  private 

  def movie_params
    params.require(:movie).permit(:title, :description, :duration, :rating)
  end
end
