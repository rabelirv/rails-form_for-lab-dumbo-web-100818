class SchoolClassesController < ApplicationController
  before_action :fetch_class, only: [:update, :show, :edit]

  def show
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(class_params)
    redirect_to school_class_path(@school_class)
  end

  def edit
  end

  def update
    @school_class.update(params.require(:school_class))
	  redirect_to school_class_path(@school_class)
  end

  private

  def class_params
    params.require(:school_class).permit(:title,:room_number)

  end

  def fetch_class
    @school_class = SchoolClass.find(params[:id])
  end
end
