class CommentsController < ApplicationController

  before_action :authenticate_user, only: [:new, :create, :show]

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(content: params[:content], user_id: session[:user_id], gossip_id: params[:gossip_id]) # avec xxx qui sont les données obtenues à partir du formulaire

    if @comment.save # essaie de sauvegarder en base @gossip
      # si ça marche, il redirige vers la page d'index du site
      redirect_to Gossip.find(params[:gossip_id])
    else
      # sinon, il render la view new (qui est celle sur laquelle on est déjà)
      redirect_to "/"
    end
  end

  def edit
    @comment = Comment.find(params[:id]) 
  end

  def update
    @comment = Comment.find(params[:id])

    if @comment.update(content: params[:content])
      redirect_to Gossip.find(params[:gossip_id])
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @gossip_id = @comment.gossip_id
    @comment.destroy
    redirect_to Gossip.find(@gossip_id)
  end
end


private

def comment_params
  params.require(:comment).permit(:content, :gossip_id,  :comment_id)
end

def authenticate_user
  unless session[:user_id]
    flash[:danger] = "Log in please"
    redirect_to new_session_path
  end
end