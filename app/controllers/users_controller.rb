class UsersController < ApplicationController

def show
# if params[:id] = "sign_out"
#     sign_out current_user
#     return
#   else

  @user = User.find(params[:id])
 # end
end

private
  def user_params
    params.require(:user).permit(:name, :location , :image ,:email )
  end

end

