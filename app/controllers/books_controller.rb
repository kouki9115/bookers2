class BooksController < ApplicationController
  def new 
    @book=Book.new
  end
  
  def create
    book=Book.new(book_params)
    book.save
    redirect_to books_path(book.id)
  end

  def index
    @book=Book.all
  end

  def show
     @book =Book.find(params[:id])
     
  end

  def destroy
    @book =Book.find(params[:id])
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body, :index)
  end
  
  protect_from_forgery with: :null_session
  
end
