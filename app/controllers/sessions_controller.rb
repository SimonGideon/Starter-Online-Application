class SessionsController < ApplicationController
    before_action :require_login, only: [:index]
    def index
    end
        
    def new
    end
        
    def create
        user = User.authenticate(params[:username], params[:password])
        if user
            puts "User found"
            session[:user_id] = user.id
            redirect_to home_path, notice: "Login Success"
        else
            flash[:alert] = "Invalid username or password"
            render :new
        end
    end
        
    def destroy
        session[:user_id] = nil
        redirect_to login_url, notice: "Logged out!"
    end
          
        
    private
        
    def user_params
        params.require(:user).permit(:username, :password)
    end
end
