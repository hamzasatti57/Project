class WebapisController < ApplicationController

def new
	  @webapi = Webapi.new
  end

 def index
    @webapis = Webapi.all
  end
 
  def show
    @webapi = Webapi.find(params[:id])
  end

  def edit
  @webapi = Webapi.find(params[:id])
end

  def create
  @webapi = current_user.webapis.new(webapi_params)
 
  if @webapi.save
    redirect_to @webapi
  else
    render 'new'
  end
end

def update
  @webapi = Webapi.find(params[:id])
 
  if @webapi.update(webapi_params)
    redirect_to @webapi
  else
    render 'edit'
  end
end
 

def destroy
  @webapi = Webapi.find(params[:id])
  @webapi.destroy
 
  redirect_to webapis_path
end

private
  def webapi_params
    params.require(:webapi).permit(:user_id,:item_level , :category ,:name, :description , :file ,:image, :layered, :layout ,:high_resolution , :live_demo , :tags ,:price ,:comment , :licence)
  end

end
