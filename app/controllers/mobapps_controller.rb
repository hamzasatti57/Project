class MobappsController < ApplicationController

def new
	  @mobapp = Mobapp.new
  end

 def index
    @mobapps = Mobapp.all
  end
 
  def show
    @mobapp = Mobapp.find(params[:id])
  end

  def edit
  @mobapp = Mobapp.find(params[:id])
end

  def create
  @mobapp = current_user.mobapps.new(mobapp_params)
 
  if @mobapp.save
    redirect_to @mobapp
  else
    render 'new'
  end
end

def update
  @mobapp = Mobapp.find(params[:id])
 
  if @mobapp.update(mobapp_params)
    redirect_to @mobapp
  else
    render 'edit'
  end
end
 

def destroy
  @mobapp = Mobapp.find(params[:id])
  @mobapp.destroy
 
  redirect_to mobapps_path
end

private
  def mobapp_params
    params.require(:mobapp).permit(:user_id,:item_level , :category ,:name, :description , :file ,:image, :layered, :layout ,:high_resolution , :live_demo , :tags ,:price ,:comment , :licence)
  end

end
