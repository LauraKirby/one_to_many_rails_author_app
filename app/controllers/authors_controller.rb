class AuthorsController < ApplicationController
	before_action :find_author, only: [:show, :edit, :update, :destroy]

  def index
  	@authors = Author.all
  end

  def new
  	@author = Author.new
  end

  def create 
  	@author = Author.new author_params
  	if @author.save
  		redirect_to authors_path, flash: {success: "Author Added"}
  	else 
  		render :new 
  	end 
  end 

  def show
  end

  def edit
  end

  def update
  	@author.update author_params
  	if @author.save 
  		redirect_to authors_path, notice: "Author has been updated"
  	else 
  		render :edit
  	end 
  end 

  def destroy 
  end 

private

	def author_params
		params.require(:author).permit(:first_name, :last_name, :age)
	end

	def find_author
		@author = Author.find params[:id]
	end 

end 
