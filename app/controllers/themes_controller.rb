class ThemesController < ApplicationController
def new
	  @theme = Theme.new
  end

 def index
    @themes = Theme.all
  end
 
  def show
    @theme = Theme.find(params[:id])
  end

  def edit
  @theme = Theme.find(params[:id])
end

  def create
  @theme = current_user.themes.new(theme_params)
 
  if @theme.save
    redirect_to @theme
  else
    render 'new'
  end
end

def update
  @theme = Theme.find(params[:id])
 
  if @theme.update(theme_params)
    redirect_to @theme
  else
    render 'edit'
  end
end
 

def destroy
  @theme = Theme.find(params[:id])
  @theme.destroy
 
  redirect_to themes_path
end

private
  def theme_params
    params.require(:theme).permit(:user_id,:item_level , :category ,:name, :description , :file ,:image, :layered, :layout ,:high_resolution , :live_demo , :tags ,:price ,:comment , :licence)
  end

end
