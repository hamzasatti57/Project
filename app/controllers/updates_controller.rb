class UpdatesController < ApplicationController

def index
  @photos = Update.all
 end

 #New action for creating a new photo
 def new
  @photo = Update.new
 end

  def destroy
  @photo = Update.find(params[:id])
    if @photo.destroy
      flash[:notice] = "Successfully deleted photo!"
      redirect_to root_path
    else
      flash[:alert] = "Error deleting photo!"
    end
  end

 #Create action ensures that submitted photo gets created if it meets the requirements
 def create
  @photo = Update.new(photo_params)
  if @photo.save
   flash[:notice] = "Successfully added new photo!"
   redirect_to @photo
  else
   flash[:alert] = "Error adding new photo!"
   render :new
  end
 end

 private

 #Permitted parameters when creating a photo. This is used for security reasons.
 def photo_params
  params.require(:photo).permit(:Name, :Age, :Address , :image)
 end


end
