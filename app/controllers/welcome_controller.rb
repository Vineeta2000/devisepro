class WelcomeController < ApplicationController
  def index
    # byebug
    if current_user.role? == "Admin"
     @user = User.all
     @posts = Post.all
   else
    @posts = current_user.posts
   end
  end
end
