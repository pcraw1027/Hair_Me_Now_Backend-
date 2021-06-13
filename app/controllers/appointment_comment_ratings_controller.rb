class AppointmentCommentRatingsController < ApplicationController
  before_action :set_appointment_comment_rating, only: [:show, :update, :destroy]

  # GET /appointment_comment_ratings
  def index
    @appointment_comment_ratings = AppointmentCommentRating.all

    render json: @appointment_comment_ratings
  end

  # GET /appointment_comment_ratings/1
  def show
    render json: @appointment_comment_rating
  end

  # POST /appointment_comment_ratings
  def create
    @appointment_comment_rating = AppointmentCommentRating.new(appointment_comment_rating_params)

    if @appointment_comment_rating.save
      render json: @appointment_comment_rating, status: :created, location: @appointment_comment_rating
    else
      render json: @appointment_comment_rating.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /appointment_comment_ratings/1
  def update
    if @appointment_comment_rating.update(appointment_comment_rating_params)
      render json: @appointment_comment_rating
    else
      render json: @appointment_comment_rating.errors, status: :unprocessable_entity
    end
  end

  # DELETE /appointment_comment_ratings/1
  def destroy
    @appointment_comment_rating.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment_comment_rating
      @appointment_comment_rating = AppointmentCommentRating.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appointment_comment_rating_params
      params.require(:appointment_comment_rating).permit(:rating, :comment, :pinned, :image)
    end
end
