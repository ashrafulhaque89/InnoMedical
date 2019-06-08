class UsersController < ApplicationController
    def index
    if current_user.admin?
        @users = User.all
    else
        flash[:msg] = "You don't have access to this page"
        redirect_to "/home/index"
    end
    end
end
