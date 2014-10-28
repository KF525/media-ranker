class HomeController < ApplicationController

  def index
    @movies = Movie.all
    @movies_array = @movies.sort { |a, b| a.rank <=> b.rank }

    @books = Book.all
    @books_array = @books.sort { |a, b| a.rank <=> b.rank }

    @albums = Rank.all
    @albums_array = @albums.sort { |a, b| a.rank <=> b.rank }
  end

end
