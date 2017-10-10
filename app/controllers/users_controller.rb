class UsersController < ApplicationController

def show
  @user = User.find(params[:id])
end

private
  def photo_params
    params.require(:photo).permit(:name, :location , :image ,:email )
  end

end

