class CommentsController < ApplicationController
  
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:comment))
    @comment.user_id = current_user.id if current_user
    @comment.save
    if @comment.save
      redirect_to post_path(@post)
    else
      render 'new'
      #code
    end
    
    
    #code
  end
  
  
  def edit
    #code
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
  end
  
  def update
    #code
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    if @comment.update(params[:comment].permit(:comment))
      redirect_to post_path(@post)
    else
      render 'edit'
        #code
    end
    
  end
  
  
  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
    #code
  end
  
  
end
