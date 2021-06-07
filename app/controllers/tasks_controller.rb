class TasksController < ApplicationController

  def create
    @task = Task.new(task_params)
    @task.user = current_user.teacher
    if @task.save
      redirect_to booking_path(@booking)
    else
      render 'bookings/show' #????
    end
  end

  def edit
    @task = Task.find(params[:task_id])
  end

  def update
    @task = Task.find(params[:task_id])
    if @task.update(task_params)
      redirect_to booking_path(@booking)
    else
      render 'edit'
  end

  def destroy
    @task = Task.find(params[:task_id])
    @task.destroy
    redirect_to booking_path(@booking)

  end

  private

  def task_params
    params.require(:task).permit(:name, :content, :completed, :type)
  end

end
