class BlogsController < ApplicationController

  def index
    @blogs = Blog.includes(:user)
  end

  def create
    Blog.create(sentence: blog_params[:sentence], title: blog_params[:title], user_id: current_user.id)
    redirect_to action: :index
  end

  def new
    @blog = Blog.new
  end

  def edit
    @blog = Blog.find(blog_params[:id])
  end

  def destroy
    
  end

  def update

  end

  private
  def blog_params
    params.permit(:sentence,:title,:id)
  end
end
