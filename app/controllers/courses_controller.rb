class CoursesController < ApplicationController
  
  def index
    @courses = Course.all
    # respond_with(@courses)
  end

  def show
    # respond_with(@course)
  end

  def new
    @course = Course.new
    # respond_with(@course)
  end

  def edit
    @course = Course.find(params[:id])
  end

  def create
    @course = Course.new(course_params)
    @course.save

    redirect_to :courses
  end

  def update
      @course = Course.find(params[:id])
      @course.update(course_params)
      redirect_to :courses
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    # respond_with(@course)
    redirect_to :courses
  end

  private
    def set_course
      @course = Course.find(params[:id])
    end

    def course_params
      params.require(:course).permit(:title, :description)
    end
end
