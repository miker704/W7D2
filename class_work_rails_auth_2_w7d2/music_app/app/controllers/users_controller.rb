class UsersController < ApplicationController

    before_action :require_current_user!, except: [:create,:new]
    

    def index
       @users = User.all
       render :index
    end
   

    def show
        @user = User.find(params[:id])
        render :show
    end
    
    def new
        render :new
    end
    
    
    def create
        @user = User.create(user_params)
        if @user.save!
          flash[:success] = "User: #{@user.email} successfully created"
          login!(@user)
          redirect_to user_url(@user)
        else
          flash[:error] = "User cannot be created!"
          render :new
        end
    end
    
    

    def update

    end


    def destroy
    
    end

    private

    def user_params
        return params.require(:user).permit(:email,:password)
    end

end
