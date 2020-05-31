class TasksController < ApplicationController
  def index
      @tasks = Task.all
  end

  def show
      @tasks = Task.find(params[:id])
  end

  def new
      @tasks = Task.new
  end

  def create
      @tasks = Task.new(tasks_params)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
