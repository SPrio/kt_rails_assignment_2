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
    if params[:image]
      @image = Image.new(image_params)
      if @image.save
        generate_flash "The image has been succesfully added"
        redirect_to images_path
      else
        render "new"    
      end 
    else
      generate_flash "Please select an image first from files and then try"
      redirect_to new_image_path
    end
  end

  def get_image
    @images = Image.all
  end
  
  def generate_flash(msg)
    flash[:notice] = msg
  end

  private
  
  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.
  
  def image_params
    params.require(:image).permit(:avatar) 
  end
end
