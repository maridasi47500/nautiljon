class RestaurantsPaysController < ApplicationController
  before_action :set__restaurants_pay, only: %i[ show edit update destroy ]

  # GET /_restaurants_pays or /_restaurants_pays.json
  def index
    @_restaurants_pays = RestaurantsPay.all
  end

  # GET /_restaurants_pays/1 or /_restaurants_pays/1.json
  def show
  end

  # GET /_restaurants_pays/new
  def new
    @_restaurants_pay = RestaurantsPay.new
  end

  # GET /_restaurants_pays/1/edit
  def edit
  end

  # POST /_restaurants_pays or /_restaurants_pays.json
  def create
    @_restaurants_pay = RestaurantsPay.new(_restaurants_pay_params)

    respond_to do |format|
      if @_restaurants_pay.save
        format.html { redirect_to restaurants_pay_url(@_restaurants_pay), notice: "Restaurants pay was successfully created." }
        format.json { render :show, status: :created, location: @_restaurants_pay }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_restaurants_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_restaurants_pays/1 or /_restaurants_pays/1.json
  def update
    respond_to do |format|
      if @_restaurants_pay.update(_restaurants_pay_params)
        format.html { redirect_to restaurants_pay_url(@_restaurants_pay), notice: "Restaurants pay was successfully updated." }
        format.json { render :show, status: :ok, location: @_restaurants_pay }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_restaurants_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_restaurants_pays/1 or /_restaurants_pays/1.json
  def destroy
    @_restaurants_pay.destroy!

    respond_to do |format|
      format.html { redirect_to restaurants_pays_url, notice: "Restaurants pay was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__restaurants_pay
      @_restaurants_pay = RestaurantsPay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _restaurants_pay_params
      params.require(:restaurants_pay).permit(:name)
    end
end
