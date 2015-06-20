class GuidesController < ApplicationController
  before_action :set_guide, only: [:show, :edit, :update, :destroy]

  def index
    @guides = Guide.all
  end

  def show
    @guides = Guide.all
    @course = @guide.course
  end

  def new
    @course = Course.find_by_id(params[:course_id])
    @guide = current_user.guides.build(course_id: params[:course_id])#Guide.new(course_id: params[:course_id])
  end

  def edit
  end

  def create
    @guide = current_user.guides.build(guide_params.merge(course_id: params[:course_id]))

    respond_to do |format|
      if @guide.save
        format.html { redirect_to @guide, notice: 'Guide was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @guide.update(guide_params)
        format.html { redirect_to @guide, notice: 'Guide was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @guide.destroy
    respond_to do |format|
      format.html { redirect_to course_path(@guide.course), notice: 'Guide was successfully deleted.' }
    end
  end

  private
    def set_guide
      @guide = Guide.find(params[:id])
    end

    def guide_params
      params.require(:guide).permit(:title, :body, :user_id, :course_id)
    end
  end
