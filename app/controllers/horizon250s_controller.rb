class Horizon250sController < ApplicationController
  before_action :set_horizon250, only: %i[ show update destroy ]

  # GET /horizon250s
  def index
    @horizon250s = Horizon250.all

    render json: @horizon250s
  end

  # GET /horizon250s/1
  def show
    render json: @horizon250
  end

  # POST /horizon250s
  def create
    @horizon250 = Horizon250.new(horizon250_params)

    if @horizon250.save
      render json: @horizon250, status: :created, location: @horizon250
    else
      render json: @horizon250.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /horizon250s/1
  def update
    if @horizon250.update(horizon250_params)
      render json: @horizon250
    else
      render json: @horizon250.errors, status: :unprocessable_entity
    end
  end

  # DELETE /horizon250s/1
  def destroy
    @horizon250.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_horizon250
      @horizon250 = Horizon250.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def horizon250_params
      params.require(:horizon250).permit(:nome, :marca, :ano, :img_moto)
    end
end
