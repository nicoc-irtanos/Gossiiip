class GossipsController < ApplicationController

  def new
  end

  def create
    @user = Gossip.create(title: params[:title], content: params[:content], anonymous_gossiper: params[:user])
    redirect_to('/gossips/' + @user.id.to)
  end

  def edit
  end

  def update
  end
end
