class AuthorsController < ApplicationController

  def index
  	@authors = Author.all
  end

  def new
  	@author = Author.new
  end

  def create 
  end 

  def show
  end

  def edit
  end

  def update
  end 

  def destroy 
  end 
end
