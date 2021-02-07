class ApplicationController < ActionController::Base

    def current_user
        @current_user ||= User.find_by_id(params[:user_id]) if session[:user_id]
    end

    def logged_in?
        !!session[:user_id]
    end

end
