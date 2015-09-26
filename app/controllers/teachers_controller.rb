class TeachersController < ApplicationController
  before_action :set_teacher, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @teachers = Teacher.all
    respond_with(@teachers)
  end

  def show
    respond_with(@teacher)
  end

  def new
    @teacher = Teacher.new
    respond_with(@teacher)
  end

  def edit
  end

  def create
    @teacher = Teacher.new(teacher_params)
    @teacher.save
    respond_with(@teacher)
  end

  def update
    @teacher.update(teacher_params)
    respond_with(@teacher)
  end

  def destroy
    @teacher.destroy
    respond_with(@teacher)
  end

  private
    def set_teacher
      @teacher = Teacher.find(params[:id])
    end

    def teacher_params
      params.require(:teacher).permit(:school_id, :name, :description)
    end
end
