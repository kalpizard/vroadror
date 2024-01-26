class SubtasksController < ApplicationController

    before_action :set_subtask, only: [:show, :edit, :update, :destroy]

    def index
      @subtasks = Subtask.all
    end
  
    def show
    end
  
    def new
      @subtask = Subtask.new
    end
  
    def create
      @subtask = Subtask.new(subtask_params)
      if @subtask.save
        redirect_to @subtask, notice: 'Subtask was successfully created.'
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @subtask.update(subtask_params)
        redirect_to @subtask, notice: 'Subtask was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @subtask.destroy
      redirect_to subtasks_url, notice: 'Subtask was successfully destroyed.'
    end
  
    private
  
    def set_subtask
      @subtask = Subtask.find(params[:id])
    end
  
    def subtask_params
      params.require(:subtask).permit(:name)
    end





end
