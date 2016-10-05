class StaticPagesController < ApplicationController
  def index
    @featured_courses = Course.order(created_at: :desc).limit(3)
  end
  
  def privacy
    
  end
  
end
