class UpdatesController < ApplicationController
	def new
	  @update = Update.new
  end

 def index
    @updates = Update.all
  end
 
  def show
    @update = Update.find(params[:id])
  end

  def edit
  @update = Update.find(params[:id])
end

  def create
  @update = Update.new(update_params)
 
  if @update.save
    redirect_to @update
  else
    render 'new'
  end
end

 
def update
  @update = Update.find(params[:id])
 
  if @update.update(update_params)
    redirect_to @update
  else
    render 'edit'
  end
end

def destroy
  @update = Update.find(params[:id])
  @update.destroy
 
  redirect_to updates_path
end

private
  def update_params
    params.require(:update).permit(:name, :user_name ,:image, :age, :gender ,:company , :location , :phone ,:description ,:website)
  end

end
