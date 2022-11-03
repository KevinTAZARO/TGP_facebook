class SessionsController < ApplicationController

    def new

    end
    
    def create
        user = User.find_by(email: params[:email])

        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            puts "ok gg"
            redirect_to '/'
            puts user.id
            puts session[:user_id]
        end
    end

    def show
        session.delete(:user_id)
        redirect_to '/'
    end

    def destroy
      
    end
end