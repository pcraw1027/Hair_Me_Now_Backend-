class SocialSitesController < ApplicationController
  before_action :set_social_site, only: [:show, :update, :destroy]

  # GET /social_sites
  def index
    @social_sites = SocialSite.all

    render json: @social_sites
  end

  # GET /social_sites/1
  def show
    render json: @social_site
  end

  # POST /social_sites
  def create
    @social_site = SocialSite.new(social_site_params)

    if @social_site.save
      render json: @social_site, status: :created, location: @social_site
    else
      render json: @social_site.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /social_sites/1
  def update
    if @social_site.update(social_site_params)
      render json: @social_site
    else
      render json: @social_site.errors, status: :unprocessable_entity
    end
  end

  # DELETE /social_sites/1
  def destroy
    @social_site.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social_site
      @social_site = SocialSite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def social_site_params
      params.require(:social_site).permit(:site_name, :url)
    end
end
