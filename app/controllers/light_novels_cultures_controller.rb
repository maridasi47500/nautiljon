class LightNovelsCulturesController < ApplicationController
  before_action :set__light_novels_culture, only: %i[ show edit update destroy ]

  # GET /_light_novels_cultures or /_light_novels_cultures.json
  def index
    @_light_novels_cultures = LightNovelsCulture.all
  end

  # GET /_light_novels_cultures/1 or /_light_novels_cultures/1.json
  def show
  end

  # GET /_light_novels_cultures/new
  def new
    @_light_novels_culture = LightNovelsCulture.new
  end

  # GET /_light_novels_cultures/1/edit
  def edit
  end

  # POST /_light_novels_cultures or /_light_novels_cultures.json
  def create
    @_light_novels_culture = LightNovelsCulture.new(_light_novels_culture_params)

    respond_to do |format|
      if @_light_novels_culture.save
        format.html { redirect_to _light_novels_culture_url(@_light_novels_culture), notice: "Light novels culture was successfully created." }
        format.json { render :show, status: :created, location: @_light_novels_culture }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_light_novels_culture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_light_novels_cultures/1 or /_light_novels_cultures/1.json
  def update
    respond_to do |format|
      if @_light_novels_culture.update(_light_novels_culture_params)
        format.html { redirect_to _light_novels_culture_url(@_light_novels_culture), notice: "Light novels culture was successfully updated." }
        format.json { render :show, status: :ok, location: @_light_novels_culture }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_light_novels_culture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_light_novels_cultures/1 or /_light_novels_cultures/1.json
  def destroy
    @_light_novels_culture.destroy!

    respond_to do |format|
      format.html { redirect_to _light_novels_cultures_url, notice: "Light novels culture was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__light_novels_culture
      @_light_novels_culture = LightNovelsCulture.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _light_novels_culture_params
      params.require(:_light_novels_culture).permit(:name)
    end
end
