class Horizon250pecasController < ApplicationController
  before_action :set_horizon250peca, only: %i[ show update destroy ]

  # GET /horizon250pecas
  def index
    @horizon250pecas = Horizon250peca.all

    render json: @horizon250pecas
  end

  # GET /horizon250pecas/1
  def show
    render json: @horizon250peca
  end

  # POST /horizon250pecas
  def create
    @horizon250peca = Horizon250peca.new(horizon250peca_params)

    if @horizon250peca.save
      render json: @horizon250peca, status: :created, location: @horizon250peca
    else
      render json: @horizon250peca.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /horizon250pecas/1
  def update
    if @horizon250peca.update(horizon250peca_params)
      render json: @horizon250peca
    else
      render json: @horizon250peca.errors, status: :unprocessable_entity
    end
  end

  # DELETE /horizon250pecas/1
  def destroy
    @horizon250peca.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_horizon250peca
      @horizon250peca = Horizon250peca.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def horizon250peca_params
      params.require(:horizon250peca).permit(:nomepeca, :motocompativel, :ano, :compatibilidade, :img_motocompativel)
    end
end
