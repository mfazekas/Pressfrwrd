class StaticPagesController < ApplicationController

  def home
    if signed_in?
      @idea  = current_user.ideas.build
      @feed_items = current_user.feed.page(params[:page])
    end
  end
  
  def help
  end

  def about
  end

  def contact
  end
end
