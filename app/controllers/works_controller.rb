class WorksController < ApplicationController

  # before_action :authenticate_user!, except: [:index, :show]

  #def index
  #  @works = Work.all
  #end
#
  #def show
  #  @work = Work.find(params[:id])
  #end

  #def new
  #  @work = Work.new
  #end
#
  #def create
  #  @work = Work.new(work_params)
  #  @work.save
  #  redirect_to work_path(@work)
  #end

  #def edit
  #  @work = Work.find(params[:id])
  #end

  #def update
  #  @work = Work.find(params[:id])
  #  @work.update(work_params)
  #  redirect_to work_path(@work)
  #end

  #def destroy
  #  @work = Work.find(params[:id])
  #  @work.destroy
  #  redirect_to works_path, status: :see_other
  #end

  def tasks
  end

  def accor
  end

  def kraze
  end

  def lcl
  end

  def cryptopassion
  end

  # Static pages

  private

  def work_params
    params.require(:work).permit(:name, :description, :photo, :tasks)
  end

end
