class TasksController < ApplicationController
  before_action :set_works
  def index
    @task = Task.all
  end

  def new
    @task = @work.tasks.build
  end

  def create
    @task = @work.tasks.build(task_params)
    @task.save
    redirect_to work_path
  end

  private

  def set_works
    @work = Work.find(params[:work_id])
  end

  def task_params
    params.require(:task).permit(:name, :description)
  end
end
