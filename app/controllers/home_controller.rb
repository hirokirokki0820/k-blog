class HomeController < ApplicationController
  def index
    @posts = Post.with_rich_text_content.order(created_at: "DESC")
  end
end
