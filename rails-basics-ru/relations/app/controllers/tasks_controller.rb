class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to @task
    else
      render :new
    end
  end

  def edit
    @task = Task.find params[:id]
  end

  def update
    @task = Task.find params[:id]
    if @task.update(task_params)
      redirect_to @task, notice: 'Task was successfully updated.'
    else
      render :edit, task: :unprocessable_entity
    end
  end

  def show
    @task = Task.find params[:id]
  end

  def destroy
    @task = Task.find params[:id]

    @task.destroy

    redirect_to tasks_url, notice: 'Task was successfully destroyed.'
  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :user_id, :status_id)
  end
end
