class AdvancesController < ApplicationController
  before_action :set_advance, only: [:show, :edit, :update, :destroy]

  def index
    @advances = Advance.all
  end

  def show
  end

  def new
    @advance = Advance.new
  end

  def create
    @advance = Advance.new(advance_params)
    if @advance.save
      redirect_to @advance, notice: 'Advance was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @advance.update(advance_params)
      redirect_to @advance, notice: 'Advance was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @advance.destroy
    redirect_to advances_url, notice: 'Advance was successfully destroyed.'
  end

  private

  def set_advance
    @advance = Advance.find(params[:id])
  end

  def advance_params
    # Agrega :death_line y :current_progress a la lista de parámetros permitidos
    params.require(:advance).permit(:description, :death_line, :current_progress)
  end
end
