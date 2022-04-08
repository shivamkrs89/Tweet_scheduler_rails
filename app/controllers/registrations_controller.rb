class RegistrationsController < ApplicationController
    def new
        @user=User.new
    end

    def create
        # params=>{"authenticity_token"=>"[FILTERED]", "user"=>{"email"=>"imshivamkr2@gmail.com", "password"=>"[FILTERED]", "password_confirmation"=>"[FILTERED]"}
        @user= User.new(user_params)

        if @user.save
            session[:user_id]= @user.id
            redirect_to root_path, notice: "User Account Registered"
        else
            render :new    
        end
    end

private

  def user_params  #method definition of userparams giving signup parameters to params
    params.require(:user).permit(:email,:password,:password_confirmation)
  end
end
