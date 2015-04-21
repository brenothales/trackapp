class SubtasksController < ApplicationController

  def create
    @subtask = Task.find(params[:task_id]).subtasks.create(name: params[:name])
  end

  def destroy
    @subtask = Subtask.find(params[:id])
    @subtask.destroy
  end

  def finish
    @subtask = Subtask.find(params[:id])
    @subtask.update(done: true)
    render :refresh
  end

  def start
    @subtask = Subtask.find(params[:id])
    @log = Log.create(subtask: @subtask, start: Time.now)
    render :refresh
  end

  def stop
    @subtask = Subtask.find(params[:id])
    @log = @subtask.logs.first.update(stop: Time.now)
    render :refresh
  end

end
