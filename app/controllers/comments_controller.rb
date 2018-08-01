class CommentsController < ApplicationController
  def create
    @comment = Comment.create(content: params[:content], anonymous_commentor: params[:user], gossip_id: params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
