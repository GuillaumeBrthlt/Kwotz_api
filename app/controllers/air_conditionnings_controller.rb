class AirConditionningsController < ApplicationController
  before_action :set_air_conditionning, only: %i[ show update destroy ]

  # GET /air_conditionnings
  def index
    @air_conditionnings = AirConditionning.all

    render json: @air_conditionnings
  end

  # GET /air_conditionnings/1
  def show
    render json: @air_conditionning
  end

  # POST /air_conditionnings
  def create
    @air_conditionning = AirConditionning.new(air_conditionning_params)

    if @air_conditionning.save
      render json: @air_conditionning, status: :created, location: @air_conditionning
    else
      render json: @air_conditionning.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /air_conditionnings/1
  def update
    if @air_conditionning.update(air_conditionning_params)
      render json: @air_conditionning
    else
      render json: @air_conditionning.errors, status: :unprocessable_entity
    end
  end

  # DELETE /air_conditionnings/1
  def destroy
    @air_conditionning.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_air_conditionning
      @air_conditionning = AirConditionning.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def air_conditionning_params
      params.require(:air_conditionning).permit(:project_id, :name, :outside_unit_type, :outnbr, :current_type, :surface, :height, :volume, :inside_unit_type, :accesories, :comment)
    end
end
