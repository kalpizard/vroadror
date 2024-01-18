class GoalsController < ApplicationController
    before_action :set_goal, only: [:show, :edit, :update, :destroy]

  def index
    @goals = Goal.all
  end

  def show
  end

  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(goal_params)
    if @goal.save
        render json: @goal, status: :created
    else
        render json: @goal.errors, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @goal.update(goal_params)
      redirect_to @goal, notice: 'Goal was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @goal.destroy
    redirect_to goals_url, notice: 'Goal was successfully destroyed.'
  end

  private

  def set_goal
    @goal = Goal.find(params[:id])
  end

  def goal_params
    params.require(:goal).permit(:goal_name)
  end
end
