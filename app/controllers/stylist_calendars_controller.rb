class StylistCalendarsController < ApplicationController
  before_action :set_stylist_calendar, only: [:show, :update, :destroy]

  # GET /stylist_calendars
  def index
    @stylist_calendars = StylistCalendar.all

    render json: @stylist_calendars
  end

  # GET /stylist_calendars/1
  def show
    render json: @stylist_calendar
  end

  # POST /stylist_calendars
  def create
    @stylist_calendar = StylistCalendar.new(stylist_calendar_params)

    if @stylist_calendar.save
      render json: @stylist_calendar, status: :created, location: @stylist_calendar
    else
      render json: @stylist_calendar.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stylist_calendars/1
  def update
    if @stylist_calendar.update(stylist_calendar_params)
      render json: @stylist_calendar
    else
      render json: @stylist_calendar.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stylist_calendars/1
  def destroy
    @stylist_calendar.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stylist_calendar
      @stylist_calendar = StylistCalendar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stylist_calendar_params
      params.require(:stylist_calendar).permit(:date, :start_time, :end_time)
    end
end
