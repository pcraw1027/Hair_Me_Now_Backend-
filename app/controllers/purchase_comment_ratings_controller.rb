class PurchaseCommentRatingsController < ApplicationController
  before_action :set_purchase_comment_rating, only: [:show, :update, :destroy]

  # GET /purchase_comment_ratings
  def index
    @purchase_comment_ratings = PurchaseCommentRating.all

    render json: @purchase_comment_ratings
  end

  # GET /purchase_comment_ratings/1
  def show
    render json: @purchase_comment_rating
  end

  # POST /purchase_comment_ratings
  def create
    @purchase_comment_rating = PurchaseCommentRating.new(purchase_comment_rating_params)

    if @purchase_comment_rating.save
      render json: @purchase_comment_rating, status: :created, location: @purchase_comment_rating
    else
      render json: @purchase_comment_rating.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /purchase_comment_ratings/1
  def update
    if @purchase_comment_rating.update(purchase_comment_rating_params)
      render json: @purchase_comment_rating
    else
      render json: @purchase_comment_rating.errors, status: :unprocessable_entity
    end
  end

  # DELETE /purchase_comment_ratings/1
  def destroy
    @purchase_comment_rating.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchase_comment_rating
      @purchase_comment_rating = PurchaseCommentRating.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def purchase_comment_rating_params
      params.require(:purchase_comment_rating).permit(:rating, :comment, :pinned, :image)
    end
end
