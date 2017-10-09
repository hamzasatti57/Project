class ProjsController < ApplicationController
	def new
	  @proj = Proj.new
  end

 def index
    @projs = Proj.all
  end
 
  def show
    @proj = Proj.find(params[:id])
  end

  def edit
  @proj = Proj.find(params[:id])
end

  def create
  @proj = current_user.projs.new(proj_params)
 
  if @proj.save
    redirect_to @proj
  else
    render 'new'
  end
end

def update
  @proj = Proj.find(params[:id])
 
  if @proj.update(proj_params)
    redirect_to @proj
  else
    render 'edit'
  end
end
 

def destroy
  @proj = Proj.find(params[:id])
  @proj.destroy
 
  redirect_to projs_path
end

private
  def proj_params
    params.require(:proj).permit(:user_id,:item_level , :category ,:name, :description , :file ,:image, :layered, :layout ,:high_resolution , :live_demo , :tags ,:price ,:comment , :licence)
  end
end
