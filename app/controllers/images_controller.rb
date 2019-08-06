class ImagesController < ApplicationController

  def index
    @images = Image.all
  end
  def new
    @image = Image.new
  end
  def show
    @image = Image.all
  end
  def create
    @image = Image.new(image_params)
    if @image.save
      redirect_to images_path
    else
      render "new"
      
    end 
  end

  private
  
  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.
  
  def image_params
    params.require(:image).permit(:avatar)  if params[:image]
  end
end
