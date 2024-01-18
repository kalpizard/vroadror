class CongratulationsController < ApplicationController
    before_action :set_congratulation, only: [:show, :edit, :update, :destroy]

    def index
      @congratulations = Congratulation.all
    end
  
    def show
    end
  
    def new
      @congratulation = Congratulation.new
    end
  
    def create
      @congratulation = Congratulation.new(congratulation_params)
      if @congratulation.save
        redirect_to @congratulation, notice: 'Congratulation was successfully created.'
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @congratulation.update(congratulation_params)
        redirect_to @congratulation, notice: 'Congratulation was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @congratulation.destroy
      redirect_to congratulations_url, notice: 'Congratulation was successfully destroyed.'
    end
  
    private
  
    def set_congratulation
      @congratulation = Congratulation.find(params[:id])
    end
  
    def congratulation_params
      params.require(:congratulation).permit(:message)
    end



end
