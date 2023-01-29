class FavoritesController < ApplicationController
  
  
  def create
    @postimage = Postimage.find(params[:post_image_id])
    @fovarite = current_user.favorites.new(post_image_id: post_image.id)
    @favorite.save
    redirect_to postimage_path(@postimage)
  end
  
  def destroy
    @postimage = PostImage.find(params[:post_image_id])
    @favorite = current_user.favorites.find_by(post_image_id: post_image.id)
    @favorite.destroy
    redirect_to postimage_path(@postimage)

  end
  
  
end
