class AppointmentReviewsController < ApplicationController
  before_action :set_appointment_review, only: [:show, :update, :destroy]

  # GET /appointment_reviews
  def index
    @appointment_reviews = AppointmentReview.all

    render json: @appointment_reviews
  end

  # GET /appointment_reviews/1
  def show
    render json: @appointment_review
  end

  # POST /appointment_reviews
  def create
    @appointment_review = AppointmentReview.new(appointment_review_params)

    if @appointment_review.save
      render json: @appointment_review, status: :created, location: @appointment_review
    else
      render json: @appointment_review.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /appointment_reviews/1
  def update
    if @appointment_review.update(appointment_review_params)
      render json: @appointment_review
    else
      render json: @appointment_review.errors, status: :unprocessable_entity
    end
  end

  # DELETE /appointment_reviews/1
  def destroy
    @appointment_review.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment_review
      @appointment_review = AppointmentReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appointment_review_params
      params.require(:appointment_reviewg).permit(:rating, :comment, :pinned, :image)
    end
end
