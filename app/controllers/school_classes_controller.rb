class SchoolClassesController < ApplicationController

  before_action :get_school_class, only: [:show, :edit, :update]

  def index
    @schoolclass = SchoolClass.all
  end

  def show
  end

  def new
    @schoolclass = SchoolClass.new
  end

  def create
    @schoolclass = SchoolClass.create(params.require(:school_class))
    redirect_to school_class_path(@schoolclass)
  end

  def edit
  end

  def update
    @schoolclass.update(params.require(:school_class))
    redirect_to school_class_path(@schoolclass)
  end

  private

  def get_school_class
    @schoolclass = SchoolClass.find(params[:id])
  end

end
