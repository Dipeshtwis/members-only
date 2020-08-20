class PostsController < ApplicationController
  before_action :authenticate_member!, only: %i[new create]

  def index
    @posts = Post.all.all.order('created_at DESC')
  end

  def new
    @post = current_member.posts.build
  end

  def create
    @post = current_member.posts.build(posts_params)
    if @post.save
      flash[:notice] = 'Post was created successfully'
      redirect_to posts_path
    else
      flash[:alert] = 'Oops!! Something Wrong'
      render 'new'
    end
  end

  private

  def posts_params
    params.require(:post).permit(:title, :body)
  end
end
