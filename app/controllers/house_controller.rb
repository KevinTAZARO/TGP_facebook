class HouseController < ApplicationController
    # Initializing the view of home
    def home
      @gossips = Gossip.all
    end
  
    # Initializing the view of Gossip
    def gossip_page
      @id = params[:id] # Using :id to take the result of the route varibles (a number)
      @gossips = Gossip.find(@id) # Using ID to search wich gossip show
    end
  
    # Initializing the view of user
    def user
      @user_db = User.find_by(first_name: params[:user]) # Using :user to take the result of the route(A first_name string)
    end
  
    # Initializing the view of Team
    def team; end
  
    # Initializing the view of Contact
    def contact; end
  
    # Initializing the view of Welcome
    def welcome
      @name = params[:name] # Using the :name to take the result of the route and take the name
    end
  end
  