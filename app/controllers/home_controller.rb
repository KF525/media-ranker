class HomeController < ApplicationController

  def index
    @movies = Movie.all
    @books = Book.all
  end

end
