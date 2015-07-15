class BooksController < ApplicationController
  before_action :find_author, only: [:index, :new, :create]
  before_action :find_animal, only: [:show, :edit, :update, :destroy]
  def index
  	#no need for an animales index, right?
  end

  def new
    @book = Book.new
  end

  def create 
    @book = @author.books.new book_params
    if @book.save
      flash[:success] = "A book was created"
      redirect_to author_books_path(@animal)
    else 
      render :new
    end
  end 

  def show
  end

  def edit
  end

  def update
  end 

  def destroy 
  end 

private
  
  def find_author 
    @author = Author.find params[:author_id]
  end 

  def find_book
    @book = Book.find params[:id]
  end 

  def book_params
    params.require(:book).permit(:title, :description)
  end


end
