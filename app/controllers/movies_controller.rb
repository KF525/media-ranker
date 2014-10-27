class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(params.require(:movie).permit(:name, :description, :director))
    @movie.rank = 0
    if @movie.save
      redirect_to movies_path
    else
      render :new
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(params.require(:movie).permit(:name, :description, :director))
      redirect_to show_movie_path
    else
      render :new
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    if @movie.destroy
      redirect_to movies_path
    else
      redirect_to show_movie_path
    end
  end

#this should perhaps go in helper or application controller?
  def upvote
    @movie = Movie.find(params[:id])
    @movie.rank += 1
    if @movie.save
      redirect_to movies_path
    else
      redirect_to show_movie_path
    end
  end
end
