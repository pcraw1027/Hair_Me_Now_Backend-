class AppointmentServicesController < ApplicationController
  before_action :set_appointment_service, only: [:show, :update, :destroy]

  # GET /appointment_services
  def index
    @appointment_services = AppointmentService.all

    render json: @appointment_services
  end

  # GET /appointment_services/1
  def show
    render json: @appointment_service
  end

  # POST /appointment_services
  def create
    @appointment_service = AppointmentService.new(appointment_service_params)

    if @appointment_service.save
      render json: @appointment_service, status: :created, location: @appointment_service
    else
      render json: @appointment_service.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /appointment_services/1
  def update
    if @appointment_service.update(appointment_service_params)
      render json: @appointment_service
    else
      render json: @appointment_service.errors, status: :unprocessable_entity
    end
  end

  # DELETE /appointment_services/1
  def destroy
    @appointment_service.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment_service
      @appointment_service = AppointmentService.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appointment_service_params
      params.fetch(:appointment_service, {})
    end
end
