class StylistAvailabilitiesController < ApplicationController
  before_action :set_stylist_availability, only: [:show, :update, :destroy]

  # GET /stylist_availabilities
  def index
    @stylist_availabilities = StylistAvailability.all

    render json: @stylist_availabilities
  end

  # GET /stylist_availabilities/1
  def show
    render json: @stylist_availability
  end

  # POST /stylist_availabilities
  def create
    @stylist_availability = StylistAvailability.new(stylist_availability_params)

    if @stylist_availability.save
      render json: @stylist_availability, status: :created, location: @stylist_availability
    else
      render json: @stylist_availability.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stylist_availabilities/1
  def update
    if @stylist_availability.update(stylist_availability_params)
      render json: @stylist_availability
    else
      render json: @stylist_availability.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stylist_availabilities/1
  def destroy
    @stylist_availability.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stylist_availability
      @stylist_availability = StylistAvailability.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stylist_availability_params
      params.require(:stylist_availability).permit(:day, :start_time, :end_time)
    end
end
