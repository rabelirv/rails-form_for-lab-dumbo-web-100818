class StudentsController < ApplicationController
  before_action :fetch_class, only: [:update, :show, :edit]
  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(students_params)
    	  # @student.first_name = params[:first_name]
    	  # @student.last_name = params[:last_name]
    	  # @student.save
    	  redirect_to student_path(@student)
  end

  def edit
  end

  def update
	  @student.update(params.require(:student))
	  redirect_to student_path(@student)
  end

  private

  def students_params
    params.require(:student).permit(:first_name, :last_name)
  end

  def fetch_class
    @student = Student.find(params[:id])
  end
end
