class UsersController < ApplicationController
    
    
    def show
        @user = User.find(params[:id])
    end
    
    def new
        @users = User.all
    end
    
    def create
        @users = User.all
    
        @users = User.new(
          first_name: params[:first_name],
          last_name: params[:last_name],
          email: params[:email],
          password: params[:password],
          password_confirmation: params[:password_conf],
          age: params[:age],
          city_id: 8,
          description: params[:description]
        )
        
        if @users.save
          # session[:user_id] = @users.id
          redirect_to '/'
        else
          render :new
        end
    end
    
end