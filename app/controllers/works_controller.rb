class WorksController < ApplicationController
  before_action :set_work, only: [:show, :edit, :update, :destroy]

  def index
    @works = Work.all
  end

  def show
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)
    @work.save
    redirect_to work_path(@work)
  end

  def edit
  end

  def update
    @work.update(work_params)
    redirect_to work_path(@work)
  end

  def destroy
    @work.destroy
    redirect_to works_path, status: :see_other
  end

  private

  def work_params
    params.require(:work).permit(:name, :description, :photo)
  end

  def set_work
    @work = Work.find(params[:id])
  end
end
