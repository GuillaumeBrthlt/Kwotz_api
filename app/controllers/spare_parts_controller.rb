class SparePartsController < ApplicationController
  before_action :set_spare_part, only: %i[ show update destroy ]
  before_action :authenticate_user!

  # GET /spare_parts
  def index
    @spare_parts = SparePart.all

    render json: @spare_parts
  end

  # GET /spare_parts/1
  def show
    render json: @spare_part
  end

  # POST /spare_parts
  def create
    @spare_part = SparePart.new(spare_part_params)

    if @spare_part.save
      render json: @spare_part, status: :created, location: @spare_part
    else
      render json: @spare_part.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /spare_parts/1
  def update
    if @spare_part.update(spare_part_params)
      render json: @spare_part
    else
      render json: @spare_part.errors, status: :unprocessable_entity
    end
  end

  # DELETE /spare_parts/1
  def destroy
    @spare_part.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spare_part
      @spare_part = SparePart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def spare_part_params
      params.require(:spare_part).permit(:project_id, :brand, :reference, :number, :details, :name, :quantity)
    end
end
