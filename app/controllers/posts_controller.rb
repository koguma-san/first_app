class PostsController < ApplicationController
  def index # indexアクションを定義
    @posts = Post.all  # 全てのレコードを@postsに代入
  end 

  def new
  end

  def create
    post.create(content: params[:content])
    redirect_to "/posts"
  end
end