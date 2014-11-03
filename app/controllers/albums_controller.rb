class AlbumsController < ApplicationController

  def index
    @albums_array = Album.all_rank_reverse
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
    if @album.update(params.require(:album).permit(:name, :description, :artist, :rank))
      redirect_to album_path
    else
      render :edit
    end
  end

  def delete
    @album = Album.find(params[:id])
    if @album.destroy
      redirect_to albums_path
    else
      redirect_to album_path
    end
  end

  def upvote
    @album = Album.find(params[:id])
    @album.rank += 1
    if @album.save
      redirect_to albums_path
    else
      redirect_to album_path
    end
  end
end
