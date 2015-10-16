class PagesController < ApplicationController
  def home
    if user_signed_in?
      @post = current_user.posts.build
    end
  end

  def about
  end

  def contact
  end

  def help
  end

  def feed
    if user_signed_in?
      @feed_items = current_user.posts.all
    end
  end
end
