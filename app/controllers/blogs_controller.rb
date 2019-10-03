class BlogsController < ApplicationController

  def index
    @blogs = Blog.new
  end

  def create
    
  end

  def edit
    
  end
  def destroy
  end
  def update

  end
  def show
  end
  private
  def blog_params
    params.permit(:sentence)
  end
end
