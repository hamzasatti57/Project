class IconsController < ApplicationController

def new
	  @icon = Icon.new
  end

 def index
    @icons = Icon.all
  end
 
  def show
    @icon = Icon.find(params[:id])
  end

  def edit
  @icon = Icon.find(params[:id])
end

  def create
  @icon = current_user.icons.new(icon_params)
 
  if @icon.save
    redirect_to @icon
  else
    render 'new'
  end
end

def update
  @icon = Icon.find(params[:id])
 
  if @icon.update(icon_params)
    redirect_to @icon
  else
    render 'edit'
  end
end
 

def destroy
  @icon = Icon.find(params[:id])
  @icon.destroy
 
  redirect_to icons_path
end

private
  def icon_params
    params.require(:icon).permit(:user_id,:item_level , :category ,:name, :description , :file ,:image, :layered, :layout ,:high_resolution , :live_demo , :tags ,:price ,:comment , :licence)
  end

end
