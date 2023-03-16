class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def show
  end

  def create
    @post = Post.new(post_params)
    @post.admin = current_admin
    if @post.save
      flash[:notice] = "投稿しました。"
      redirect_to @post
    else
      render "new", status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
  end

  private

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :content)
    end
end
