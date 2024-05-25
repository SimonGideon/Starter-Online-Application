class SessionsController < ApplicationController
    before_action :require_login, only: [:index]
    def index
    end
        
    def new
    end

    def fetch_data
        begin
          response = RestClient.get('https://cat-fact.herokuapp.com/facts/')
          @data = JSON.parse(response.body)
          render json: @data
        rescue SocketError, RestClient::ExceptionWithResponse => e
        # raise error 500
        render_500
        end
      end
        
    def create
        user = User.authenticate(params[:email], params[:password])
        if user
            puts "User found"
            session[:user_id] = user.id
            redirect_to home_path, notice: "Login Success"
        else
            flash[:alert] = "Invalid email or password"
            render :new
        end
    end
        
    def destroy
        session[:user_id] = nil
        redirect_to login_url, notice: "Logged out!"
    end
          
        
    private
        
    def user_params
        params.require(:user).permit(:email, :password)
    end
end
