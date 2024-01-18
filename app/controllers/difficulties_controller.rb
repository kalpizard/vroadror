class DifficultiesController < ApplicationController
   
    before_action :set_difficulty, only: [:show, :edit, :update, :destroy]

    def index
      @difficulties = Difficulty.all
    end
  
    def show
    end
  
    def new
      @difficulty = Difficulty.new
    end
  
    def create
      @difficulty = Difficulty.new(difficulty_params)
      if @difficulty.save
        redirect_to @difficulty, notice: 'Difficulty was successfully created.'
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @difficulty.update(difficulty_params)
        redirect_to @difficulty, notice: 'Difficulty was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @difficulty.destroy
      redirect_to difficulties_url, notice: 'Difficulty was successfully destroyed.'
    end
  
    private
  
    def set_difficulty
      @difficulty = Difficulty.find(params[:id])
    end
  
    def difficulty_params
      params.require(:difficulty).permit(:name)
    end


end
