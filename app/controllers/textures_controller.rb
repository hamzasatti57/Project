class TexturesController < ApplicationController

def new
	  @texture = Texture.new
  end

 def index
    @textures = Texture.all
  end
 
  def show
    @texture = Texture.find(params[:id])
  end

  def edit
  @texture = Texture.find(params[:id])
end

  def create
  @texture = current_user.textures.new(texture_params)
 
  if @texture.save
    redirect_to @texture
  else
    render 'new'
  end
end

def update
  @texture = Texture.find(params[:id])
 
  if @texture.update(texture_params)
    redirect_to @texture
  else
    render 'edit'
  end
end
 

def destroy
  @texture = Texture.find(params[:id])
  @texture.destroy
 
  redirect_to textures_path
end

private
  def texture_params
    params.require(:texture).permit(:user_id,:item_level , :category ,:name, :description , :file ,:image, :layered, :layout ,:high_resolution , :live_demo , :tags ,:price ,:comment , :licence)
  end

end
