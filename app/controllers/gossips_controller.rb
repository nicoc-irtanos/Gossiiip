class GossipsController < ApplicationController

  def index
  end

  def new
  end

  def create
    @gossip = Gossip.create(title: params[:title], content: params[:content], anonymous_gossiper: params[:user])
    redirect_to('/gossips/' + @gossip.id.to_s)
  end

  def edit
  end

  def update
    @gossip = Gossip.find(params[:id])
    @gossip.update(title: params[:title], content: params[:content], anonymous_gossiper: params[:user])
    redirect_to('/gossips/' + @gossip.id.to_s)
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to('/gossips')
  end
end
