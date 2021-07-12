class PolesController < ApplicationController
  before_action :set_pole, only: [:show, :update, :destroy]

  # GET /poles
  def index
    @poles = Pole.all

    render json: @poles
  end

  # GET /poles/1
  def show
    render json: @pole
  end

  # POST /poles
  def create
    @pole = Pole.new(pole_params)

    if @pole.save
      render json: @pole, status: :created, location: @pole
    else
      render json: @pole.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /poles/1
  def update
    if @pole.update(pole_params)
      render json: @pole
    else
      render json: @pole.errors, status: :unprocessable_entity
    end
  end

  # DELETE /poles/1
  def destroy
    @pole.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pole
      @pole = Pole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pole_params
      params.require(:pole).permit(:name)
    end
end
