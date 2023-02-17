class CategoriesListingsController < ApplicationController
  before_action :set_categories_listing, only: %i[ show edit update destroy ]

  # GET /categories_listings or /categories_listings.json
  def index
    @categories_listings = CategoriesListing.all
  end

  # GET /categories_listings/1 or /categories_listings/1.json
  def show
  end

  # GET /categories_listings/new
  def new
    @categories_listing = CategoriesListing.new
  end

  # GET /categories_listings/1/edit
  def edit
  end

  # POST /categories_listings or /categories_listings.json
  def create
    @categories_listing = CategoriesListing.new(categories_listing_params)

    respond_to do |format|
      if @categories_listing.save
        format.html { redirect_to categories_listing_url(@categories_listing), notice: "Categories listing was successfully created." }
        format.json { render :show, status: :created, location: @categories_listing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @categories_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories_listings/1 or /categories_listings/1.json
  def update
    respond_to do |format|
      if @categories_listing.update(categories_listing_params)
        format.html { redirect_to categories_listing_url(@categories_listing), notice: "Categories listing was successfully updated." }
        format.json { render :show, status: :ok, location: @categories_listing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @categories_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories_listings/1 or /categories_listings/1.json
  def destroy
    @categories_listing.destroy

    respond_to do |format|
      format.html { redirect_to categories_listings_url, notice: "Categories listing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categories_listing
      @categories_listing = CategoriesListing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def categories_listing_params
      params.require(:categories_listing).permit(:Category_id, :Listing_id)
    end
end
