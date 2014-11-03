class HomeController < ApplicationController

  def index
    @top_five_movies = Movie.top_five

    @top_five_books = Book.top_five

    @top_five_albums = Album.top_five
  end

end
