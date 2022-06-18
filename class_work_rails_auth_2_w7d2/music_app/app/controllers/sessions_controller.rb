class SessionsController < ApplicationController

        # before_action :require_current_user!, only: [:create, :new]
        before_action :require_current_user!, only: [:create, :new]
    def new
        render :new
    end
    
    def create
        
            @user= User.find_by_credentials(params[:user][:email],params[:user][:password])
           
            
            if @user.nil?

                # flash[:error] = "incorrect credentials"
                 redirect_to user_url
                # render json: "invalid credentials"

            else
                # flash[:success] = "Login successful !"
                redirect_to user_url(@user)
                logout!
                login!(@user)
                # redirect_to user_url(@user)

            end


    end
    
    def destroy
        
        logout!
        redirect_to session_url

    end
    
    
end
