class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy] 
  before_action :authenticate_user!, except: [:index, :show]
  def index
    #code
    @posts = Post.where(:section => params[:section]).paginate(:page => params[:page], :per_page => 12).order("created_at DESC")
    @found = false
    @comments = Comment.all.order("created_at ASC")
    @posts_all = Post.all.order("created_at ASC")
    
    #@posts = Post.paginate(:page => params[:page], :per_page => 12).order("created_at DESC")
    #@posts = Post.where(:section => "test")
    @sections = Section.all
  end
  
  def show
    #code
    
  end
  
  def new
    @post = current_user.posts.build
    #code
  end
  
  
  def create
    @post = current_user.posts.build(post_params)
    
    if @post.save
        #code
        redirect_to @post
      else
        render 'new'
    end
    
    
  end
  
  
  def edit
          
  end
  
  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
        #code
    end
    
  end
  
  def destroy
    #code
    @post.destroy
    redirect_to root_path
  end
  
  
  
  private
  
  def find_post
    @post = Post.find(params[:id])
  end
  
  def post_params
    params.require(:post).permit(:title, :content, :section)
  end
  
  
end
