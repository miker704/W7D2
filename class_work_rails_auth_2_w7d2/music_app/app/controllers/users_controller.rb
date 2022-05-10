class UsersController < ApplicationController


    

    def index
       @user = User.all
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
        @user = User.new(user_params)
        if @user.save
          flash[:success] = "User: #{@user.email} successfully created"
          redirect_to @user
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
