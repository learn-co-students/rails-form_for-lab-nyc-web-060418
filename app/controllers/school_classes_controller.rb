class SchoolClassesController < ApplicationController
  before_action :fetch_school_class, only: [:show, :edit, :update]
  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(params.require(:school_class))
    @school_class.save
    redirect_to @school_class
  end

  def show
  end

  def edit
  end

  def update
    @school_class.update(params.require(:school_class).permit(:title, :room_number))
    redirect_to @school_class
  end

  private
  def fetch_school_class
    @school_class = SchoolClass.find(params[:id])
  end


end
