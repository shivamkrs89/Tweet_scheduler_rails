class MainController < ApplicationController
    def index
        if session[:user_id]
           # @user = User.find(session[:user_id]) used where we are sure userid exists
           @user=User.find_by(id: session[:user_id])
        end

    end
end    