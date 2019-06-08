class UsersController < ApplicationController
    def index
    if current_user.admin?
        @users = User.search(params[:term])
    else
        redirect_to "/home/index"
    end
    end
    
    def user_params
            params.require(:user).permit(:term)
    end
end
