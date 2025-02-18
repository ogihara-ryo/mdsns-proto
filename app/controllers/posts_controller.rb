class PostsController < ApplicationController
  before_action :required_sign_in

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.create!(post_params)
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
