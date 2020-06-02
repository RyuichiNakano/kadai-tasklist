class TasksController < ApplicationController
  def index
      @tasks = Task.all
  end

  def show
      @task = Task.find(params[:id])
  end

  def new
      @task = Task.new
  end

  def create
      @task = Task.new(tasks_params)
      
      if @task.save
        flash[:success] = 'Task が正常に記録されました'
        redirect_to @message
      else
        flash.now[:danger] = 'Task が正常に記録されませんでした'
        render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
