class PostimagesController < ApplicationController
  def new
    @postimage = PostImage.new
  end
  
  def create
    @postimage = PostImage.new(postimages_params)
    @postimage.user_id = current_user.id
    if @postimage.save
      redirect_to postimages_path
    else
      render:new
    end
  end

  def index
    @postimages = PostImage.page(params[:page])
  end

  def show
    @postimage =　PostImage.find(params[:id])
    @post_comment = PostComment.new
  end
  
  def destroy
    @postimage = PostImage.find(params[:id])
    @postimage.destroy
    redirect_to postimages_path
  end
  
  private
  
  def postimages_params
    params.require(:post_image).permit(:shop_name, :image, :caption)
  end
  
end
