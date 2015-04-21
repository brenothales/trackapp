class TasksController < ApplicationController

  def index
    @tasks = Task.all
    @task = Task.includes(subtasks: :logs).first
    @task ||= Task.create(name: 'Demo Task')
  end

  def show
    @task = Task.includes(subtasks: :logs).find(params[:id])
  end

  def create
    @task = Task.create(name: params[:name])
    @tasks = Task.all
  end

  def destroy
    @deleted = Task.find(params[:id]).destroy
    @task = Task.includes(subtasks: :logs).first
    render :show
  end

end
