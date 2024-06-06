class LightNovelsPublicAvertisController < ApplicationController
  before_action :set__light_novels_public_averti, only: %i[ show edit update destroy ]

  # GET /_light_novels_public_avertis or /_light_novels_public_avertis.json
  def index
    @_light_novels_public_avertis = LightNovelsPublicAverti.all
  end

  # GET /_light_novels_public_avertis/1 or /_light_novels_public_avertis/1.json
  def show
  end

  # GET /_light_novels_public_avertis/new
  def new
    @_light_novels_public_averti = LightNovelsPublicAverti.new
  end

  # GET /_light_novels_public_avertis/1/edit
  def edit
  end

  # POST /_light_novels_public_avertis or /_light_novels_public_avertis.json
  def create
    @_light_novels_public_averti = LightNovelsPublicAverti.new(_light_novels_public_averti_params)

    respond_to do |format|
      if @_light_novels_public_averti.save
        format.html { redirect_to light_novels_public_averti_url(@_light_novels_public_averti), notice: "Light novels public averti was successfully created." }
        format.json { render :show, status: :created, location: @_light_novels_public_averti }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_light_novels_public_averti.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_light_novels_public_avertis/1 or /_light_novels_public_avertis/1.json
  def update
    respond_to do |format|
      if @_light_novels_public_averti.update(_light_novels_public_averti_params)
        format.html { redirect_to light_novels_public_averti_url(@_light_novels_public_averti), notice: "Light novels public averti was successfully updated." }
        format.json { render :show, status: :ok, location: @_light_novels_public_averti }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_light_novels_public_averti.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_light_novels_public_avertis/1 or /_light_novels_public_avertis/1.json
  def destroy
    @_light_novels_public_averti.destroy!

    respond_to do |format|
      format.html { redirect_to light_novels_public_avertis_url, notice: "Light novels public averti was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__light_novels_public_averti
      @_light_novels_public_averti = LightNovelsPublicAverti.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _light_novels_public_averti_params
      params.require(:light_novels_public_averti).permit(:name)
    end
end
