class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @postimage = @user.post_images
  end

  def edit
  end
end
