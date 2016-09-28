class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end
  
  def update
    @course = Course.find(params[:id])
  end
  
  def show
    @course = Course.find(params[:id])
  end
end
