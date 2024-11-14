class TasksController < ApplicationController
  before_action :set_task, only: %i[ show edit update destroy ]

  def index
    @tasks = Task.all
    @task = Task.new
  end

  def show
  end

  def edit
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_back_or_to tasks_path, notice: "Task was successfully created."
    else
      redirect_back_or_to tasks_path, alert: "The task could not be created."
    end
  end

  def update
    if @task.update(task_params)
      redirect_back_or_to tasks_path, notice: "Task was successfully created."
    else
      redirect_back_or_to tasks_path, alert: "The task could not be created."
    end
  end

  def destroy
    @task.destroy!
    redirect_back_or_to tasks_path, notice: "Task was successfully destroyed."
  end

  private
    def set_task
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:title, :description, :status, :due_date)
    end
end
