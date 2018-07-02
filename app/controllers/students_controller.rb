class StudentsController < ApplicationController

  before_action :get_student, only: [:show, :edit, :update]

  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(params.require(:student))
    redirect_to student_path(@student)
  end

  def edit
  end

  def update
    @student.update(params.require(:student))
    redirect_to students_path(@student)
  end

  private

  def get_student
    @student = Student.find(params[:id])
  end

end
