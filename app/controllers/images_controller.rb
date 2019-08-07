class ImagesController < ApplicationController
  before_action :get_image, only: [:index, :show]
  def index
  end
  def new
    @image = Image.new
  end
  def show
  end
  def create
    @image = Image.new(image_params)
    if @image.save
      redirect_to images_path
    else
      render "new"    
    end 
  end
  def get_image
    @images = Image.all
  end
  
  private
  
  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.
  
  def image_params
    params.require(:image).permit(:avatar)  if params[:image]
  end
end
