class PricesController < ApplicationController
  before_action :set_price, only: [:show, :update, :destroy]

  # GET /prices
  def index
    @prices = Price.all

    render json: @prices
  end

  # GET /prices/1
  def show
    render json: @price
  end

  # POST /prices
  def create
    price = Price.new(price_params)

    if price.valid?
      price.save
      render json:price
    else
      render json: {error: "Not able to create a price"}
    end

    # if @price.save
    #   render json: @price, status: :created, location: @price
    # else
    #   render json: @price.errors, status: :unprocessable_entity
    # end
  end

  # PATCH/PUT /prices/1
  def update
    if @price.update(price_params)
      render json: @price
    else
      render json: @price.errors, status: :unprocessable_entity
    end
  end

  # DELETE /prices/1
  def destroy
    @price.destroy
  end

  #Find Prices for Stylist
  def stylist_prices
    render json: Price.stylist_prices(params[:stylist_id]), include: :service
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_price
      @price = Price.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def price_params
      params.require(:price).permit(:amount, :image, :url, :current, :comment, :stylist_id, :service_id)
    end
end
