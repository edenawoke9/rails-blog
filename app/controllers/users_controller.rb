class UsersController < ApplicationController
    def new
      @user = User.new
    end
  
    def create
      @user = User.new(allow_params)
      if @user.save
        session[:user_id] = @user.id
        flash[:notice] = "Thank you for signing up."
        redirect_to root_url
      else
        flash[:error] = "Fix your input!"
        render "new"
      end
    end
  
    private
  
    def allow_params
      params.require(:user).permit(:name, :email, :password)
    end
  end
  