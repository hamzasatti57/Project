class MoresController < ApplicationController

def new
	  @more = More.new
  end

 def index
    @mores = More.all
  end
 
  def show
    @more = More.find(params[:id])
  end

  def edit
  @more = More.find(params[:id])
end

  def create
  @more = current_user.mores.new(more_params)
 
  if @more.save
    redirect_to @more
  else
    render 'new'
  end
end

def update
  @more = More.find(params[:id])
 
  if @more.update(more_params)
    redirect_to @more
  else
    render 'edit'
  end
end
 

def destroy
  @more = More.find(params[:id])
  @more.destroy
 
  redirect_to mores_path
end

private
  def more_params
    params.require(:more).permit(:user_id,:item_level , :category ,:name, :description , :file ,:image, :layered, :layout ,:high_resolution , :live_demo , :tags ,:price ,:comment , :licence)
  end

end
