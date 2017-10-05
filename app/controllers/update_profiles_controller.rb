class UpdateProfilesController < ApplicationController

def new
	  @updateprofile = Updateprofile.new
  end

 def index
    @updateprofiles = Updateprofile.all
  end
 
  def show
    @updateprofile = Updateprofile.find(params[:id])
  end

  def edit
  @updateprofile = Updateprofile.find(params[:id])
end

  def create
  @updateprofile = Updateprofile.new(updateprofile_params)
 
  if @updateprofile.save
    redirect_to @updateprofile
  else
    render 'new'
  end
end

 
def update
  @updateprofile = Updateprofile.find(params[:id])
 
  if @updateprofile.update(updateprofile_params)
    redirect_to @updateprofile
  else
    render 'edit'
  end
end

def destroy
  @updateprofile = Updateprofile.find(params[:id])
  @updateprofile.destroy
 
  redirect_to updateprofiles_path
end

private
  def updateprofile_params
    params.require(:updateprofile).permit(:name, :user_name ,:image, :age, :gender ,:company , :location , :phone ,:description ,:website)
  end

end
