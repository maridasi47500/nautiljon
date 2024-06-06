class RestaurantsController < ApplicationController
  before_action :set__restaurant, only: %i[ show edit update destroy ]

  # GET /_restaurants or /_restaurants.json
  def index
    @_restaurants = Restaurant.all
  end

  # GET /_restaurants/1 or /_restaurants/1.json
  def show
  end

  # GET /_restaurants/new
  def new
    @_restaurant = Restaurant.new
  end

  # GET /_restaurants/1/edit
  def edit
  end

  # POST /_restaurants or /_restaurants.json
  def create
    @_restaurant = Restaurant.new(_restaurant_params)

    respond_to do |format|
      if @_restaurant.save
        format.html { redirect_to restaurant_url(@_restaurant), notice: "Restaurant was successfully created." }
        format.json { render :show, status: :created, location: @_restaurant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_restaurants/1 or /_restaurants/1.json
  def update
    respond_to do |format|
      if @_restaurant.update(_restaurant_params)
        format.html { redirect_to restaurant_url(@_restaurant), notice: "Restaurant was successfully updated." }
        format.json { render :show, status: :ok, location: @_restaurant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_restaurants/1 or /_restaurants/1.json
  def destroy
    @_restaurant.destroy!

    respond_to do |format|
      format.html { redirect_to restaurants_url, notice: "Restaurant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__restaurant
      @_restaurant = Restaurant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _restaurant_params
      params.require(:restaurant).permit(:nom, :image, :adresse, :tel, :description, :dept, :ville, :_restaurants_pays_id, :horaires, :creation, :site, :acceptregles)
    end
end
