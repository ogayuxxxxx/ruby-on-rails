class TopController < ApplicationController
  def index 
    @articles = Article.visible.order(released_at: :desc).limit(5)
    @articles = Article.open_to_the_public unless current_member
  end
end