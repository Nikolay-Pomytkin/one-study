class GuidesController < ApplicationController
  before_action :set_guide, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @guides = Guide.all
    respond_with(@guides)
  end

  def show
    respond_with(@guide)
  end

  def new
    @guide = Guide.new
    respond_with(@guide)
  end

  def edit
  end

  def create
    @guide = Guide.new(guide_params)
    @guide.save
    respond_with(@guide)
  end

  def update
    @guide.update(guide_params)
    respond_with(@guide)
  end

  def destroy
    @guide.destroy
    respond_with(@guide)
  end

  private
    def set_guide
      @guide = Guide.find(params[:id])
    end

    def guide_params
      params.require(:guide).permit(:title, :body, :user_id, :course_id)
    end
end
