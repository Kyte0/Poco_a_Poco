class TasksController < ApplicationController

  def new
    @task = Task.new
    @booking = Booking.find(params[:booking_id])
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @task = Task.new(task_params)
    @task.booking = @booking
    if @task.save
      redirect_to booking_path(@booking)
    else
      render 'new'
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
  end

  def destroy
    @task = Task.find(params[:task_id])
    @task.destroy
    redirect_to booking_path(@booking)
  end

  private

  def task_params
    params.require(:task).permit(:name, :content, :category)
  end

end
