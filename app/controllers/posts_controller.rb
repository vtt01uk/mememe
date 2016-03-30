class PostsController < ApplicationController
  
  def index
    @posts = Post.all.order('created_at DESC')
  end
  
  def new
  end
  
  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to @post
  end
 
  def show
    @post = Post.find(params[:id])
  end
  
  #methods that apply to the methods above in this controller and not no where else
  private
    def post_params
      params.require(:post).permit(:title, :body)
    end
  
end
