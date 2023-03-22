class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, only: [:new, :edit, :update, :destroy]

  def index
    @posts = Post.with_rich_text_content
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
    if @post.update(post_params)
      flash[:notice] = "投稿を更新しました。"
      redirect_to @post
    else
      render "edit", status: :unprocessable_entity
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path, status: :see_other
  end

  private

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :content)
    end
end
