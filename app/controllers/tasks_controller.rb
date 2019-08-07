class TasksController < ApplicationController
  def index
    @tasks = current_user.tasks.where(completed: false).order('priority DESC')
    @completed_tasks = current_user.tasks.where(completed: true).order('updated_at')
  end  

  def new
  	@task = current_user.tasks.build
  end

  def show
    @task = current_user.tasks.find params[:id]
  end

  def create
   	@task = current_user.tasks.build(task_params)
  	if @task.save
  	  redirect_to @task, notive:'Task was successfully created.'
    else
      render :new
    end
  end

  def edit
  	@task = current_user.tasks.find params[:id] 
  end

  def update
  	@task = current_user.tasks.find params[:id]
    @task.update_attributes task_params
  	redirect_to tasks_path
  end

  def complete
    @task = current_user.tasks.find params[:id]
    @task.complete!
    redirect_to tasks_path
  end

  def destroy
    @task = current_user.tasks.find params[:id]
  	@task.destroy
  	redirect_to tasks_path
  end

private
  def task_params
  	params.require(:task).permit([:title, :description, :priority, :due_date, :completed])
  end
end
 

