class PurchaseReviewsController < ApplicationController
  before_action :set_purchase_review, only: [:show, :update, :destroy]

  # GET /purchase_reviews
  def index
    @purchase_reviews = PurchaseReview.all

    render json: @purchase_reviews
  end

  # GET /purchase_reviews/1
  def show
    render json: @purchase_review
  end

  # POST /purchase_reviews
  def create
    @purchase_review = PurchaseReview.new(purchase_review_params)

    if @purchase_review.save
      render json: @purchase_review, status: :created, location: @purchase_review
    else
      render json: @purchase_review.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /purchase_reviews/1
  def update
    if @purchase_review.update(purchase_review_params)
      render json: @purchase_review
    else
      render json: @purchase_review.errors, status: :unprocessable_entity
    end
  end

  # DELETE /purchase_reviews/1
  def destroy
    @purchase_review.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchase_review
      @purchase_review = PurchaseReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def purchase_review_params
      params.require(:purchase_review).permit(:rating, :comment, :pinned, :image)
    end
end
