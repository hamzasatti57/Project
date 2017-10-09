class UpdatesController < ApplicationController
	def new
	 if 

    @update = Update.find_by_id(current_user.id)
   else
    @update = Update.new
end
  end

 def index
    @updates = Update.all
  end
 
  def show
    @update = Update.find(params[:id])
  end

  def create
    if  @update = current_user.updates.find_by_id(current_user.id)
   
      if @update.update(update_params)
        redirect_to @update
      else

    render 'edit'
  end
  else 

    @update = Update.new(update_params)
    @update.user_id = current_user.id
    @update.save!
    redirect_to contact_path(@update.user_id)
  end
end

def destroy
  @update = Update.find(params[:id])
  @update.destroy
 
  redirect_to updates_path
end

private
  def update_params
    params.require(:update).permit(:user_id,:name, :user_name ,:image, :age, :gender ,:company , :location , :phone ,:description ,:website)
  end

end
