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
    @blog = Blog.find(params[:id])
  end

  def destroy
    blog = Blog.find(params[:id])
    blog.destroy if blog.user_id == current_user.id
    redirect_to action: :index
  end

  def update
    blog = Blog.find(params[:id])
    blog.update(blog_params) if blog.user_id == current_user.id
    redirect_to action: :index
  end

  private
  def blog_params
    params.require(:blog).permit(:id,:title,:sentence)
  end
end
