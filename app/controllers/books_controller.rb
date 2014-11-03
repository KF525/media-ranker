class BooksController < ApplicationController

  def index
    @books_array = Book.all_rank_reverse
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(params.require(:book).permit(:name, :description, :author))
    @book.rank = 0
    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(params.require(:book).permit(:name, :description, :author, :rank))
      redirect_to book_path
    else
      render :edit
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    if @book.destroy
      redirect_to books_path
    else
      redirect_to show_book_path
    end
  end
end
