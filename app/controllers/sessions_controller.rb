class SessionsController < ApplicationController

    def new
    end

    def create
        user = User.find_by(username: params[:user][:username])
    end

    def destroy
        session.clear
        redirect_to root_path
    end

end