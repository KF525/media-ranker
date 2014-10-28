class AlbumsController < ApplicationController

  def index
    @albums = Album.all
    @albums_array = @albums.sort { |a, b| a.rank <=> b.rank }
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(params.require(:album).permit(:name, :description, :artist))
    @album.rank = 0
    if @album.save
      redirect_to albums_path
    else
      render :new
    end
  end

  def show
    @album = Album.find(params[:id])
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    if @album.update(params.require(:album).permit(:name, :description, :artist))
      redirect_to show_album_path
    else
      render :edit
    end
  end

  def delete
    @album = Album.find(params[:id])
    if @album.destroy
      redirect to albums_path
    else
      redirect_to show_album_path
    end
  end

  def upvote
    @album = Album.find(params[:id])
    @album.rank += 1
    if @album.save
      redirect_to albums_path
    else
      redirect_to show_album_path
    end
  end
end
