class LightNovelsCommercesController < ApplicationController
  before_action :set__light_novels_commerce, only: %i[ show edit update destroy ]

  # GET /_light_novels_commerces or /_light_novels_commerces.json
  def index
    @_light_novels_commerces = LightNovelsCommerce.all
  end

  # GET /_light_novels_commerces/1 or /_light_novels_commerces/1.json
  def show
  end

  # GET /_light_novels_commerces/new
  def new
    @_light_novels_commerce = LightNovelsCommerce.new
  end

  # GET /_light_novels_commerces/1/edit
  def edit
  end

  # POST /_light_novels_commerces or /_light_novels_commerces.json
  def create
    @_light_novels_commerce = LightNovelsCommerce.new(_light_novels_commerce_params)

    respond_to do |format|
      if @_light_novels_commerce.save
        format.html { redirect_to light_novels_commerce_url(@_light_novels_commerce), notice: "Light novels commerce was successfully created." }
        format.json { render :show, status: :created, location: @_light_novels_commerce }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_light_novels_commerce.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_light_novels_commerces/1 or /_light_novels_commerces/1.json
  def update
    respond_to do |format|
      if @_light_novels_commerce.update(_light_novels_commerce_params)
        format.html { redirect_to light_novels_commerce_url(@_light_novels_commerce), notice: "Light novels commerce was successfully updated." }
        format.json { render :show, status: :ok, location: @_light_novels_commerce }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_light_novels_commerce.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_light_novels_commerces/1 or /_light_novels_commerces/1.json
  def destroy
    @_light_novels_commerce.destroy!

    respond_to do |format|
      format.html { redirect_to light_novels_commerces_url, notice: "Light novels commerce was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__light_novels_commerce
      @_light_novels_commerce = LightNovelsCommerce.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _light_novels_commerce_params
      params.require(:light_novels_commerce).permit(:name)
    end
end
