class ApplicationController < ActionController::Base
    helper_method :current_user
    def render_404
        render file: "#{Rails.root}/public/404.html", layout: false, status: :not_found
    end

    def render_500
        render file: "#{Rails.root}/public/500.html", layout: false, status: :internal_server_error
    end
    private
    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def require_login
        unless current_user
            redirect_to login_path
        end
    end
end
