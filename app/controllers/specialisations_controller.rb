class SpecialisationsController < ApplicationController
  before_action :set_specialisation, only: [:show, :update, :destroy]

  # GET /specialisations
  def index
    @specialisations = Specialisation.all

    render json: @specialisations
  end

  # GET /specialisations/1
  def show
    render json: @specialisation
  end

  # POST /specialisations
  def create
    @specialisation = Specialisation.new(specialisation_params)

    if @specialisation.save
      render json: @specialisation, status: :created, location: @specialisation
    else
      render json: @specialisation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /specialisations/1
  def update
    if @specialisation.update(specialisation_params)
      render json: @specialisation
    else
      render json: @specialisation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /specialisations/1
  def destroy
    @specialisation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_specialisation
      @specialisation = Specialisation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def specialisation_params
      params.require(:specialisation).permit(:name)
    end
end
