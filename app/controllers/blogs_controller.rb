class BlogsController < ApplicationController

  def index
    
  end

  def create
    Blog.create(sentence: blog_params[:sentence], title: blog_params[:title], user_id: current_user.id)
    redirect_to action: :index
  end

  def new
    @blogs = Blog.new
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
    params.require(:blog).permit(:sentence, :title)
  end
end
